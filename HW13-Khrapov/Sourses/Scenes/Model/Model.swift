//
//  Model.swift
//  HW13-Khrapov
//
//  Created by Anton on 28.08.2022.
//

import UIKit

enum CellType: String {
    case switchType
    case textType
    case defaultType
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
        [CellModels(type: .switchType,
                    image: UIImage(systemName: "airplane") ?? UIImage(),
                    imageColor: .systemOrange,
                    name: "Авиарежим"),
        CellModels(type: .textType,
                   image: UIImage(systemName: "wifi") ?? UIImage(),
                   imageColor: .systemBlue,
                   name: "Wi-Fi",
                   detailTextLabel: "TP-Link_44"),
         CellModels(type: .textType,
                    image: UIImage(named: "bluetooth") ?? UIImage(),
                    imageColor: .systemBlue,
                    name: "Bluetooth",
                    detailTextLabel: "Вкл."),
        CellModels(type: .defaultType,
                   image: UIImage(systemName: "antenna.radiowaves.left.and.right") ?? UIImage(),
                   imageColor: .systemGreen,
                   name: "Сотовая связь"),
        CellModels(type: .textType,
                   image: UIImage(systemName: "personalhotspot") ?? UIImage(),
                   imageColor: .systemGreen,
                   name: "Режим модема",
                   detailTextLabel: "Выкл."),
         CellModels(type: .textType,
                    image: UIImage(named: "VPN") ?? UIImage(),
                    imageColor: .systemBlue,
                    name: "VPN",
                    detailTextLabel: "Не подключено")],
        
        [CellModels(type: .defaultType,
                    image: UIImage(systemName: "app.badge") ?? UIImage(),
                    imageColor: .systemRed,
                    name: "Уведомления"),
        CellModels(type: .defaultType,
                   image: UIImage(systemName: "speaker.wave.3.fill") ?? UIImage(),
                   imageColor: .systemRed,
                   name: "Звуки, тактильные сигналы"),
         CellModels(type: .defaultType,
                    image: UIImage(systemName: "moon.fill") ?? UIImage(),
                    imageColor: .systemIndigo,
                    name: "Не беспокоить"),
        CellModels(type: .defaultType,
                   image: UIImage(systemName: "hourglass") ?? UIImage(),
                   imageColor: .systemIndigo,
                   name: "Экранное время")],
        
        [CellModels(type: .defaultType,
                    image: UIImage(systemName: "gear") ?? UIImage(),
                    imageColor: .systemGray2,
                    name: "Основные"),
        CellModels(type: .defaultType,
                   image: UIImage(systemName: "switch.2") ?? UIImage(),
                   imageColor: .systemGray2,
                   name: "Пункт управления"),
         CellModels(type: .defaultType,
                    image: UIImage(systemName: "textformat.size") ?? UIImage(),
                    imageColor: .systemBlue,
                    name: "Экран и яркость"),
        CellModels(type: .defaultType,
                   image: UIImage(systemName: "apps.ipad") ?? UIImage(),
                   imageColor: .blue,
                   name: "Экран«Домой»"),
         CellModels(type: .defaultType,
                    image: UIImage(named: "universal") ?? UIImage(),
                    imageColor: .systemBlue,
                    name: "Универсальный доступ"),
         CellModels(type: .defaultType,
                    image: UIImage(named: "wallpapper") ?? UIImage(),
                    imageColor: UIColor(named: "walpColor") ?? UIColor(),
                    name: "Обои"),
         CellModels(type: .defaultType,
                    image: UIImage(named: "Siri") ?? UIImage(),
                    imageColor: .systemIndigo,
                    name: "Siri и Поиск"),
         CellModels(type: .defaultType,
                    image: UIImage(systemName: "faceid") ?? UIImage(),
                    imageColor: .systemGreen,
                    name: "Face ID и код-пароль"),
         CellModels(type: .defaultType,
                    image: UIImage(named: "SOS") ?? UIImage(),
                    imageColor: .systemRed,
                    name: "Экстренный вызов - SOS"),
         CellModels(type: .defaultType,
                    image: UIImage(named: "microbe") ?? UIImage(),
                    imageColor: .white,
                    name: "Уведомления о контакте"),
         CellModels(type: .defaultType,
                    image: UIImage(systemName: "battery.100") ?? UIImage(),
                    imageColor: .systemGreen,
                    name: "Аккумулятор"),
         CellModels(type: .defaultType,
                    image: UIImage(systemName: "hand.raised.fill") ?? UIImage(),
                    imageColor: .systemBlue,
                    name: "Конфиденциальность")
        ]
    ]
}
