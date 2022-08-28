//
//  Extensions.swift
//  HW13-Khrapov
//
//  Created by Anton on 28.08.2022.
//

import UIKit

extension ViewController: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        cells?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cells?[section].count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cells = cells?[indexPath.section][indexPath.row]
        switch cells?.type {
        case .withSwitch:
            let cell = tableView.dequeueReusableCell(withIdentifier: "switchCell", for: indexPath) as? TableViewCell
            cell?.cell = cells
            return cell ?? UITableViewCell()
        case .withText:
            let cell = tableView.dequeueReusableCell(withIdentifier: "textCell", for: indexPath)
            cell.textLabel?.text = cells?.name
            cell.imageView?.image = cells?.image
            cell.imageView?.tintColor = .white
            cell.imageView?.backgroundColor = .systemBlue
            cell.imageView?.layer.cornerRadius = 4
            cell.accessoryType = .disclosureIndicator
            
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "def", for: indexPath)
            cell.textLabel?.text = cells?.name
            cell.imageView?.image = cells?.image
            return cell
        }
    }
}
