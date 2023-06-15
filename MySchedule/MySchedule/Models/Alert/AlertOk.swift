//
//  AlertOk.swift
//  MySchedule
//
//  Created by Лина Вертинская on 17.07.22.
//

import UIKit

extension UIViewController {

    func alertOk(title: String, message: String?) {

        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)

        let ok = UIAlertAction(title: "OK", style: .default)

        alert.addAction(ok)

        present(alert, animated: true, completion: nil)
    }
}

