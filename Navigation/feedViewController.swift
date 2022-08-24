import Foundation
import UIKit

class FeedViewController: UIViewController {

    var post = Post(title: "Заголовок поста")

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemCyan
        showButtonPost()
    }


    func showButtonPost() {

        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        view.addSubview(button)

        button.setTitle("Показать пост", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = .white
        button.center = view.center
        button.addTarget(self, action: #selector(self.didTapButton), for: .touchUpInside)

    }
    @objc private func didTapButton() {
        let vc = PostViewController()
        vc.title = post.title
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
