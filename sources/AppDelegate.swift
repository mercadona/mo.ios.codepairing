import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.makeKeyAndVisible()
        self.window = window
        
        let viewController = MemberListViewController()
        let repository = MemberListRepositoryImpl()
        let presenter = MemberListPresenter(view: viewController, repository: repository)
        viewController.presenter = presenter
        
        window.rootViewController = viewController
        
        return true
    }
}

