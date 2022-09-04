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
    
    var cells = CellModels.cells
    
    private lazy var tableWiew: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        
        tableView.register(SwitchTableViewCell.self, forCellReuseIdentifier: SwitchTableViewCell.identifier)
        tableView.register(TextTableViewCell.self, forCellReuseIdentifier: TextTableViewCell.identifier)
        tableView.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.identifier)
        
        tableView.dataSource = self
        tableView.delegate = self
        return tableView
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
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {

    func numberOfSections(in tableView: UITableView) -> Int {
        cells.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cells[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = cells[indexPath.section][indexPath.row]
        let cellType = model.type.rawValue
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellType, for: indexPath) as? CustomTableViewCell else { return UITableViewCell() }
        cell.cellModel = model
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = DetailViewController()
        tableView.deselectRow(at: indexPath, animated: true)
        viewController.cellModel = cells[indexPath.section][indexPath.row]
        navigationController?.pushViewController(viewController, animated: true)
    }
}
