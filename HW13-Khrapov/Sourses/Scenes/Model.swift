//
//  Model.swift
//  HW13-Khrapov
//
//  Created by Anton on 28.08.2022.
//

import UIKit

enum CellType {
    case withSwitch
    case withText
    case def
}

struct CellModels {
    var type: CellType
    var image: UIImage
    var name: String
}

extension CellModels {
    static var cells: [[CellModels]] = [
        [CellModels(type: .withSwitch, image: UIImage(systemName: "airplane") ?? UIImage(), name: "Авиарежим"),
        CellModels(type: .withText, image: UIImage(systemName: "wifi") ?? UIImage(), name: "Wi-Fi"),
        CellModels(type: .def, image: UIImage(systemName: "antenna.radiowaves.left.and.right") ?? UIImage(), name: "Сотовая связь")]
    ]
}
