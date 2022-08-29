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

extension ViewController: UITableViewDataSource {

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
}


//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cells = cells?[indexPath.section][indexPath.row]
//        switch cells?.type {
//        case .withSwitch:
//            let cell = tableView.dequeueReusableCell(withIdentifier: "withSwitch", for: indexPath) as? SwitchTableViewCell
//            cell?.cell = cells
//            return cell ?? UITableViewCell()
//        case .withText:
//            let cell = tableView.dequeueReusableCell(withIdentifier: "withText", for: indexPath) as? TextTableViewCell
//            cell?.cell = cells
//            return cell ?? UITableViewCell()
//        default:
//            let cell = tableView.dequeueReusableCell(withIdentifier: "def", for: indexPath) as? TableViewCell
//            cell?.cell = cells
//            return cell ?? UITableViewCell()
//        }
//    }
