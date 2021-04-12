import UIKit

final class ReminderTypeCell: UICollectionViewCell {

    private lazy var iconView = {
        UIImageView(image: #imageLiteral(resourceName: "glyphCalendar"))
    }()

    private lazy var typeLabel: UILabel = {
        let label = UILabel()
        label.text = "Today"
        label.textColor = .black
        return label
    }()

    private lazy var countLabel: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.textColor = .black
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configureCell()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configureCell() {
        backgroundColor = .white
        addSubview(iconView)
        addSubview(typeLabel)
        addSubview(countLabel)
        setupConstraints()
    }

    func setupConstraints() {
        iconView.snp.makeConstraints { make in
            make.top.equalTo(contentView)
            make.leading.equalTo(contentView)
        }

        typeLabel.snp.makeConstraints { make in
            make.bottom.equalTo(contentView)
            make.leading.equalTo(contentView)
        }

        countLabel.snp.makeConstraints { make in
            make.top.equalTo(contentView)
            make.trailing.equalTo(contentView)
        }
    }
}
