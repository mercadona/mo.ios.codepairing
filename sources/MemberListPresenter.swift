import Foundation

protocol MemberListView: class {
    func reload()
}

class MemberListPresenter {
    let totalSalary: Double = 0
    
    var memberCount: Int {
        return members.count
    }
    
    private var members: [Member] = []
    private weak var view: MemberListView?
    private let repository: MemberListRepository
    
    init(view: MemberListView, repository: MemberListRepository) {
        self.view = view
        self.repository = repository
    }
    
    func viewDidLoad() {
        showMembersSorted(with: .raw)
    }
    
    func member(at position: Int) -> Member {
        return members[position]
    }
    
    func segmentedControllerValueChanged(to index: Int) {
        guard let option = SortingOption(rawValue: index) else { return }
        
        showMembersSorted(with: option)
    }
}

private extension MemberListPresenter {
    func showMembersSorted(with option: SortingOption) {
        members = repository.fetch().sorted(by: option.sorting)
        view?.reload()
    }
}

private extension MemberListPresenter {
    enum SortingOption: Int {
        case raw
        case productivity
        case productivityGroupedByArea
        
        var sorting: (Member, Member) -> Bool {
            return { _, _ in false }
        }
    }
}
