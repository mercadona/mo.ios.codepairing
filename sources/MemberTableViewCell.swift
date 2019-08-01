import UIKit

class MemberTableViewCell: UITableViewCell {
    @IBOutlet private weak var areaView: UIView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var roleLabel: UILabel!
    @IBOutlet private weak var productivityLabel: UILabel!

    func configure(with member: Member) {
        areaView.backgroundColor = member.area.color
        nameLabel.text = member.name
        roleLabel.text = member.role.rawValue
        productivityLabel.text = "x\(member.productivity)"
    }
}
