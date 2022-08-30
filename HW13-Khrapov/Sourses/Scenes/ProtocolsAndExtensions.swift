//
//  Extensions.swift
//  HW13-Khrapov
//
//  Created by Anton on 28.08.2022.
//

import UIKit

protocol CustomTableViewCell: UITableViewCell {
    var cell: CellModels? { get set }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {

    func numberOfSections(in tableView: UITableView) -> Int {
        cells?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cells?[section].count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cells = cells?[indexPath.section][indexPath.row] else { return UITableViewCell() }
        let cellType = cells.type.rawValue
        let cell = tableView.dequeueReusableCell(withIdentifier: cellType, for: indexPath) as? CustomTableViewCell
        cell?.cell = cells
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = DetailViewController()
        tableView.deselectRow(at: indexPath, animated: true)
        viewController.cell = cells?[indexPath.section][indexPath.row]
        navigationController?.pushViewController(viewController, animated: true)
    }
}

