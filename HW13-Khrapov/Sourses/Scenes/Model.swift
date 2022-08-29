//
//  Model.swift
//  HW13-Khrapov
//
//  Created by Anton on 28.08.2022.
//

import UIKit

enum CellType: String {
    case withSwitch
    case withText
    case def
}

struct CellModels {
    var type: CellType
    var image: UIImage
    var imageColor: UIColor
    var name: String
    var detailTextLabel: String?
}

extension CellModels {
    static var cells: [[CellModels]] = [
        [CellModels(type: .withSwitch,
                    image: UIImage(systemName: "airplane") ?? UIImage(),
                    imageColor: .systemOrange,
                    name: "Авиарежим"),
        CellModels(type: .withText,
                   image: UIImage(systemName: "wifi") ?? UIImage(),
                   imageColor: .systemBlue,
                   name: "Wi-Fi",
                   detailTextLabel: "TP-Link_44"),
         CellModels(type: .withText,
                    image: UIImage(named: "bluetooth") ?? UIImage(),
                    imageColor: .systemBlue,
                    name: "Bluetooth",
                    detailTextLabel: "Вкл."),
        CellModels(type: .def,
                   image: UIImage(systemName: "antenna.radiowaves.left.and.right") ?? UIImage(),
                   imageColor: .systemGreen,
                   name: "Сотовая связь"),
        CellModels(type: .withText,
                   image: UIImage(systemName: "personalhotspot") ?? UIImage(),
                   imageColor: .systemGreen,
                   name: "Режим модема",
                   detailTextLabel: "Выкл."),
         CellModels(type: .withText,
                    image: UIImage(named: "VPN") ?? UIImage(),
                    imageColor: .systemBlue,
                    name: "VPN",
                    detailTextLabel: "Не подключено")],
        
        [CellModels(type: .def,
                    image: UIImage(systemName: "app.badge") ?? UIImage(),
                    imageColor: .systemRed,
                    name: "Уведомления"),
        CellModels(type: .def,
                   image: UIImage(systemName: "speaker.wave.3.fill") ?? UIImage(),
                   imageColor: .systemRed,
                   name: "Звуки, тактильные сигналы"),
         CellModels(type: .def,
                    image: UIImage(systemName: "moon.fill") ?? UIImage(),
                    imageColor: .systemIndigo,
                    name: "Не беспокоить"),
        CellModels(type: .def,
                   image: UIImage(systemName: "hourglass") ?? UIImage(),
                   imageColor: .systemIndigo,
                   name: "Экранное время")],
        
        [CellModels(type: .def,
                    image: UIImage(systemName: "gear") ?? UIImage(),
                    imageColor: .gray,
                    name: "Основные"),
        CellModels(type: .def,
                   image: UIImage(systemName: "switch.2") ?? UIImage(),
                   imageColor: .gray,
                   name: "Пункт управления"),
         CellModels(type: .def,
                    image: UIImage(systemName: "textformat.size") ?? UIImage(),
                    imageColor: .systemBlue,
                    name: "Экран и яркость"),
        CellModels(type: .def,
                   image: UIImage(systemName: "antenna.radiowaves.left.and.right") ?? UIImage(),
                   imageColor: .systemGreen,
                   name: "Экран Домой"),
         CellModels(type: .def,
                    image: UIImage(systemName: "antenna.radiowaves.left.and.right") ?? UIImage(),
                    imageColor: .systemGreen,
                    name: "Универсальный доступ"),
         CellModels(type: .def,
                    image: UIImage(systemName: "antenna.radiowaves.left.and.right") ?? UIImage(),
                    imageColor: .systemGreen,
                    name: "Обои"),
         CellModels(type: .def,
                    image: UIImage(systemName: "antenna.radiowaves.left.and.right") ?? UIImage(),
                    imageColor: .systemGreen,
                    name: "Siri и Поиск"),
         CellModels(type: .def,
                    image: UIImage(systemName: "faceid") ?? UIImage(),
                    imageColor: .systemGreen,
                    name: "Face ID и код-пароль"),
         CellModels(type: .def,
                    image: UIImage(systemName: "antenna.radiowaves.left.and.right") ?? UIImage(),
                    imageColor: .systemRed,
                    name: "Экстренный вызов - SOS"),
         CellModels(type: .def,
                    image: UIImage(named: "microbe") ?? UIImage(),
                    imageColor: .white,
                    name: "Уведомления о контакте"),
         CellModels(type: .def,
                    image: UIImage(systemName: "battery.100") ?? UIImage(),
                    imageColor: .systemGreen,
                    name: "Аккумулятор"),
         CellModels(type: .def,
                    image: UIImage(systemName: "hand.raised.fill") ?? UIImage(),
                    imageColor: .systemBlue,
                    name: "Конфиденциальность")
        ]
    ]
}
