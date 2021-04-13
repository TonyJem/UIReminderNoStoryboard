import UIKit

final class MyListsCell: UITableViewCell {
    
    private let RoundedEdgesRadius: CGFloat = 8

    private var myCellLabel = UILabel()
    private var iconContainerView = UIView()
        
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        applyTheming()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func configureCell(text: String) {
        myCellLabel.text = text
        myCellLabel.font = UIFont.systemFont(ofSize: 17)
        
        self.addSubview(myCellLabel)
        
        myCellLabel.snp.makeConstraints { label in
            label.leading.equalTo(contentView.snp.leading).offset(20)
            label.trailing.equalTo(contentView.snp.trailing).offset(20)
            label.top.equalTo(contentView.snp.top).offset(10)
            label.height.equalTo(20)
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
    
    func comfigureLabel() {
        
    }
}
