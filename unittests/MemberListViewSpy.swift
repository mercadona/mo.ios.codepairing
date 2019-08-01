@testable import codepairing

class MemberListViewSpy: MemberListView {
    var didReload = false
    func reload() {
        didReload = true
    }
}
