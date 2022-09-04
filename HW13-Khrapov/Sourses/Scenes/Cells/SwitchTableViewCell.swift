//
//  SwitchTableViewCell.swift
//  HW13-Khrapov
//
//  Created by Anton on 28.08.2022.
//

import UIKit
import SnapKit

class SwitchTableViewCell: UITableViewCell, CustomTableViewCell {
    
    static let identifier = CellType.switchType.rawValue
    
    // MARK: - Elements
    
    var cellModel: CellModels? {
        didSet {
            image.image = cellModel?.image
            text.text = cellModel?.name
            backImageView.backgroundColor = cellModel?.imageColor
        }
    }
    
    private lazy var image: UIImageView = {
        let image = UIImageView()
        image.tintColor = .white
        return image
    }()
    
    private lazy var backImageView: UIView = {
        let imageView = UIView()
        imageView.layer.cornerRadius = 5
        return imageView
    }()
    
    private lazy var text: UILabel = {
        let text = UILabel()
        return text
    }()
    
    private lazy var switchElement: UISwitch = {
        let switchElement = UISwitch()
        switchElement.setOn(false, animated: true)
        switchElement.addTarget(self, action: #selector(switched), for: .valueChanged)
        return switchElement
    }()
    
    // MARK: - Initializers

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        accessoryView = switchElement
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        addSubview(backImageView)
        addSubview(image)
        addSubview(text)
    }
    
    private func setupLayout() {
        backImageView.snp.makeConstraints { make in
            make.centerY.equalTo(snp.centerY)
            make.left.equalTo(snp.left).offset(15)
            make.width.height.equalTo(28)
        }
        
        image.snp.makeConstraints { make in
            make.center.equalTo(backImageView)
            make.width.height.equalTo(21)
        }
        
        text.snp.makeConstraints { make in
            make.centerY.equalTo(backImageView)
            make.left.equalTo(backImageView.snp.right).offset(15)
        }
    }
    
    // MARK: - Actions
    
    @objc private func switched() {
        
    }
}
