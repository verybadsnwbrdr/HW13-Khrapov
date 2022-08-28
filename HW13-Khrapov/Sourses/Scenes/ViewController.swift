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
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "switchCell")
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "textCell")
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "def")
        tableView.dataSource = self
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cells = CellModels.cells
        view.backgroundColor = .white
        title = "Настройки"
        setupHierarchy()
        setupLayout()
    }

    // MARK: - Setup
    
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

