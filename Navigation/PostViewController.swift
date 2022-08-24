import Foundation
import UIKit

class PostViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemMint
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "info"), style: .plain, target: self, action: #selector(dismissSelf))
    }

    @objc private func dismissSelf() {
        let alert = UINavigationController(rootViewController: InfoViewController())
        present(alert, animated: true)
    }
}
