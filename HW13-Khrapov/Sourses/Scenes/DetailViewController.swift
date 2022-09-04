//
//  DetailViewController.swift
//  HW13-Khrapov
//
//  Created by Anton on 30.08.2022.
//

import UIKit
import SnapKit

class DetailViewController: UIViewController {

    // MARK: - Elements
    
    var cellModel: CellModels? {
        didSet {
            cellBackgroundImage.backgroundColor = cellModel?.imageColor
            cellImage.image = cellModel?.image
            cellLabel.text = cellModel?.name
        }
    }
    
    private lazy var cellBackgroundImage: UIView = {
        let background = UIView()
        background.layer.cornerRadius = 125
        return background
    }()
    
    private lazy var cellImage: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .white
        return imageView
    }()
    
    private lazy var cellLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 22)
        return label
    }()

    // MARK: - Initializers
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setup
    
    private func setupView() {
        view.backgroundColor = .white
    }
    
    private func setupHierarchy() {
        view.addSubview(cellBackgroundImage)
        view.addSubview(cellImage)
        view.addSubview(cellLabel)
    }
    
    private func setupLayout() {
        cellBackgroundImage.snp.makeConstraints { make in
            make.center.equalTo(view)
            make.width.height.equalTo(250)
        }
        
        cellImage.snp.makeConstraints { make in
            make.center.equalTo(cellBackgroundImage)
            make.width.height.equalTo(180)
        }
        
        cellLabel.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(cellBackgroundImage.snp.bottom).offset(20)
        }
    }
}
