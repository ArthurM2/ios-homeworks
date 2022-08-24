import Foundation
import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func showAlert() {

        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        view.addSubview(button)

        button.setTitle("Показать алерт", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = .white
        button.center = view.center
        button.addTarget(self, action: #selector(self.didTapButton), for: .touchUpInside)

    }
    @objc private func didTapButton() {
        print("button tapped")
    }
}
