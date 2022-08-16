import UIKit

class ProfileView: UIView {
    
    @IBOutlet weak var avatarUserImageView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var userBirthdayLabel: UILabel!
    @IBOutlet weak var userCityLabel: UILabel!
    @IBOutlet weak var userTextView: UITextView!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setUp()
    }
    
    private func setUp() {
        let view = self.loadViewFromXib()
        self.addSubview(view)
        view.frame = self.bounds
    }
    
    private func loadViewFromXib() -> UIView {
        guard let view = Bundle.main.loadNibNamed(
            "ProfileView", owner: self)?.first as? UIView else {
                return UIView()
                
            }
        return view
    }
}
