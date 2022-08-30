//
//  ViewController.swift
//  HW13-Khrapov
//
//  Created by Anton on 28.08.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    // MARK: - Elements
    
    var cells: [[CellModels]]?
    
    private lazy var tableWiew: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        
        tableView.register(SwitchTableViewCell.self, forCellReuseIdentifier: "withSwitch")
        tableView.register(TextTableViewCell.self, forCellReuseIdentifier: "withText")
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "def")
        
        tableView.dataSource = self
        tableView.delegate = self
        return tableView
    }()

    // MARK: - Initializers
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        cells = CellModels.cells
        setupHierarchy()
        setupLayout()
    }

    // MARK: - Setup
    
    private func setupView() {
        view.backgroundColor = .white
        title = "Настройки"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    private func setupHierarchy() {
        view.addSubview(tableWiew)
    }
    
    private func setupLayout() {
        tableWiew.snp.makeConstraints { make in
            make.top.bottom.left.right.equalTo(view)
        }
    }
    
    // MARK: - Actions
    
}

