import UIKit

final class MyListsCell: UITableViewCell {
    
    private let RoundedEdgesRadius: CGFloat = 8
    
    private var iconContainerView = UIView()
    private var iconView = UIImageView()
    private var myCellLabel = UILabel()
    private var reminderCountLabel = UILabel()
    private var arrowLabel = UILabel()
        
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        applyTheming()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func configureCell(text: String, cellHeight: CGFloat) {
        
        iconContainerView.backgroundColor = .systemBlue
        iconContainerView.layer.cornerRadius = 15
        iconContainerView.clipsToBounds = true
        
        iconView = UIImageView(image: #imageLiteral(resourceName: "calendar").withTintColor(.white))
        
        myCellLabel.text = text
        myCellLabel.font = UIFont.systemFont(ofSize: 17)

        arrowLabel.text = ">"
        arrowLabel.font = UIFont.systemFont(ofSize: 17)
        
        self.addSubview(iconContainerView)
        iconContainerView.addSubview(iconView)
        self.addSubview(myCellLabel)
//        self.addSubview(reminderCountLabel)
        self.addSubview(arrowLabel)
        
        iconContainerView.snp.makeConstraints { make in
            make.top.equalTo(contentView).offset((cellHeight - 30)/2)
            make.leading.equalTo(contentView).offset(10)
            make.height.equalTo(30)
            make.width.equalTo(30)
        }
        
        iconView.snp.makeConstraints { make in
            make.centerX.equalTo(iconContainerView)
            make.centerY.equalTo(iconContainerView)
            make.width.equalTo(20)
            make.height.equalTo(20)
        }
        
        myCellLabel.snp.makeConstraints { make in
            make.leading.equalTo(iconContainerView.snp.trailing).offset(10)
            make.trailing.equalTo(contentView.snp.trailing).offset(20)
            make.top.equalTo(contentView.snp.top).offset(10)
            make.height.equalTo(20)
        }
        
        arrowLabel.snp.makeConstraints { make in
            make.top.equalTo(contentView).offset((cellHeight - 30)/2)
            make.trailing.equalTo(contentView.snp.trailing).offset(200)
            make.height.equalTo(30)
            make.width.equalTo(15)
        }
    }
    
}

private extension MyListsCell {
    func applyTheming() {
        backgroundColor = .clear
        contentView.backgroundColor = .white
        contentView.layer.cornerRadius = RoundedEdgesRadius
        contentView.layer.maskedCorners = [
            .layerMinXMaxYCorner,
            .layerMaxXMaxYCorner,
            .layerMinXMinYCorner,
            .layerMaxXMinYCorner
        ]
    }
}


/*
 
 private extension ReminderTypeCell {

     func setupCell(iconViewColor: UIColor) {
         backgroundColor = .white
         layer.cornerRadius = RoundedCornerRadius
         iconContainerView.addSubview(iconView)
         addSubview(iconContainerView)
         addSubview(typeLabel)
         addSubview(countLabel)

         setupConstraints()
     }

     func setupConstraints() {
         iconContainerView.snp.makeConstraints { make in
             make.top.equalTo(contentView).offset(10)
             make.leading.equalTo(contentView).offset(10)
             make.height.equalTo(30)
             make.width.equalTo(30)
         }

         iconView.snp.makeConstraints { make in
             make.centerX.equalTo(iconContainerView)
             make.centerY.equalTo(iconContainerView)
             make.width.equalTo(20)
             make.height.equalTo(20)
         }

         typeLabel.snp.makeConstraints { make in
             make.bottom.equalTo(contentView).inset(10)
             make.leading.equalTo(contentView).offset(10)
         }

         countLabel.snp.makeConstraints { make in
             make.top.equalTo(contentView).offset(10)
             make.trailing.equalTo(contentView).inset(10)
         }
     }
 }
 
 */
