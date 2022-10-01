import UIKit

class ProfileHeaderViewController: UIViewController {

    private lazy var profileHeaderView: ProfileHeaderView = {
        let profileHeaderView = ProfileHeaderView(frame: CGRect(x: 0, y: 88, width: 414, height: 808))
        return profileHeaderView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()

        self.navigationItem.title = "Профиль"
        self.view.addSubview(self.profileHeaderView)

    }

    func setupView() {
        self.view.backgroundColor = .white
    }


    
}
