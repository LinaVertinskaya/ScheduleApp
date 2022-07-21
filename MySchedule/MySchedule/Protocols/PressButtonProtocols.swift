//
//  PressButtonProtocols.swift
//  MySchedule
//
//  Created by Лина Вертинская on 13.07.22.
//

import Foundation

protocol PressReadyTaskButtonProtocol: AnyObject {
    func readyButtonTapped(indexPath: IndexPath)
}

protocol SwitchRepeatProtocol: AnyObject {
    func switchRepeat(value: Bool)
}
