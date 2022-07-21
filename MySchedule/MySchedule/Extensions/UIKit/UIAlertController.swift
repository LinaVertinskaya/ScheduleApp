//
//  UIAlertController.swift
//  MySchedule
//
//  Created by Лина Вертинская on 14.07.22.
//

import UIKit

extension UIAlertController {

    func negativeWidthConstraint() {

        for subView in self.view.subviews {
            for constraints in subView.constraints where constraints.debugDescription.contains("width == - 16") {
                subView.removeConstraint(constraints)
            }
        }
    }
}
