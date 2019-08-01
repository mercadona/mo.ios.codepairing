import UIKit

class MemberListViewController: UIViewController {
    @IBOutlet private weak var segmentedController: UISegmentedControl!
    @IBOutlet private weak var tableView: UITableView!
    
    var presenter: MemberListPresenter!

    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        presenter.viewDidLoad()
    }
}

extension MemberListViewController: MemberListView {
    func reload() {
        tableView.reloadData()
    }
}

extension MemberListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.memberCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemberTableViewCell", for: indexPath) as! MemberTableViewCell
        
        let member = presenter.member(at: indexPath.row)
        cell.configure(with: member)
        return cell
    }
}

private extension MemberListViewController {
    func configureView() {
        let cellNib = UINib(nibName: "MemberTableViewCell", bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: "MemberTableViewCell")
        tableView.dataSource = self
    }
    
    @IBAction func segmentedControllerValueChanged(_ sender: UISegmentedControl) {
        presenter.segmentedControllerValueChanged(to: sender.selectedSegmentIndex)
    }
}
