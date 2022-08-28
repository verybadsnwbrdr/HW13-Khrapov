//
//  TextTableViewCell.swift
//  HW13-Khrapov
//
//  Created by Anton on 28.08.2022.
//

import UIKit
import SnapKit

class TextTableViewCell: UITableViewCell {

    // MARK: - Elements
    
    var cell: CellModels? {
        didSet {
            image.image = cell?.image
            text.text = cell?.name
            backImageView.backgroundColor = cell?.imageColor
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
    
    
    // MARK: - Initialirs

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
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
//            make.centerY.equalTo(contentView.snp.centerY)
            make.top.bottom.equalTo(contentView).offset(8)
            make.left.equalTo(contentView).offset(15)
            
            make.width.height.equalTo(28)
        }
        
        image.snp.makeConstraints { make in
            make.center.equalTo(backImageView)
            make.width.height.equalTo(20)
        }
        
        text.snp.makeConstraints { make in
            make.centerY.equalTo(backImageView)
            make.left.equalTo(backImageView.snp.right).offset(15)
        }
    }
}
