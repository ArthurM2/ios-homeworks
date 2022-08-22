//
//  feedViewController.swift
//  Navigation
//
//  Created by a.malginov on 22.08.2022.
//

import Foundation
import UIKit

class FeedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemCyan
        showButtonPost()
    }

    func showButtonPost() {

        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        view.addSubview(button)

        button.setTitle("Пост", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = .white
        button.center = view.center

    }
//
//    @objc private func didTapButton() {
//        let vc = EighthViewController()
//        vc.modalPresentationStyle = .fullScreen
//        self.present(vc, animated: true)
//    }
}
