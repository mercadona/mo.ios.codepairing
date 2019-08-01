import XCTest
@testable import codepairing

class MemberListPresenterTest: XCTestCase {
    var view: MemberListViewSpy!
    var repository: MemberListRepository!
    var presenter: MemberListPresenter!

    override func setUp() {
        view = MemberListViewSpy()
        repository = MemberListRepositoryImpl()
        presenter = MemberListPresenter(view: view, repository: repository)
        
        presenter.viewDidLoad()
    }
}
