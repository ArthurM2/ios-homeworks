import UIKit

class ProfileHeaderView: UIView {

    private var statusText: String?

    private lazy var avatarImageView: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 16, y: 16, width: 122, height: 122))
        imageView.layer.masksToBounds = true // разрешаем изменять имейджвью
        imageView.layer.cornerRadius = imageView.frame.height/2 // делаем круг
        imageView.layer.borderWidth = 3 // толщина обводки
        imageView.layer.borderColor = UIColor.white.cgColor // устанавливаем цвет обводки
        imageView.image = UIImage(named: "dog.jpeg") // устанавливаем дефолтный аватар
        return imageView
    }()

    private lazy var usernameLabel: UILabel = {
        let nameLabel = UILabel(frame: CGRect(x: 180, y: 27, width: 200, height: 30))

        nameLabel.text = "Puppy"
        nameLabel.textColor = .black // цвет текста
        nameLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 18) // делаем текст "жирным" и устанавливаем его размерразмер

        return nameLabel
    }()

    private lazy var statusLabel: UILabel = {
        let statusLabel = UILabel(frame: CGRect(x: 180, y: 103, width: 200, height: 30))

        statusLabel.text = "status for test"
        statusLabel.textColor = .gray
        statusLabel.font = UIFont(name: "HelveticaNeue-Regular", size: 14) // устанавливаем размер текста
        return statusLabel
    }()

    private lazy var showStatusButton: UIButton = {
        let statusButton = UIButton(frame: CGRect(x: 16, y: 154, width: 382, height: 50))

        statusButton.setTitle("Show status", for: .normal) // установка тайтла кнопки
        statusButton.backgroundColor = .systemBlue // бекграунд кнопки
        statusButton.layer.masksToBounds = true
        statusButton.layer.cornerRadius = 8 // поставил не по тз, потому что макет сильно отличается. Похоже что там радиус вообще 12, а не 4 как указано. Поставил среднее значение

//        self.setupShadowButton()
        statusButton.layer.masksToBounds = true
        statusButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        statusButton.layer.shadowRadius = 4
        statusButton.layer.shadowPath = nil
        statusButton.layer.shadowColor = UIColor.black.cgColor
        statusButton.layer.shadowOpacity = 0.7

        statusButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)

        return statusButton
    }()

    @objc private func buttonPressed() {
        print("check \(statusLabel.text)")
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

//    private func setupShadowButton() {
//        self.layer.masksToBounds = true
//        self.layer.shadowOffset = CGSize(width: 4.0, height: 4.0)
//        self.layer.shadowRadius = 4.0
//        self.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
//        self.layer.shadowOpacity = 0.7
//    }

    private func setupView() {
        self.backgroundColor = .lightGray
        self.addSubview(avatarImageView)
        self.addSubview(usernameLabel)
        self.addSubview(statusLabel)
        self.addSubview(showStatusButton)
    }


}
