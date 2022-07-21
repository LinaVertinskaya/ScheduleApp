//
//  HeaderOptionScheduleTableViewCell.swift
//  MySchedule
//
//  Created by Лина Вертинская on 13.07.22.
//

import UIKit

class HeaderOptionsTableViewCell: UITableViewHeaderFooterView {

    let headerLabel = UILabel(text: "", font: .avenirNext14())

    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)

        headerLabel.textColor = #colorLiteral(red: 0.250980407, green: 0.250980407, blue: 0.250980407, alpha: 1)

        self.contentView.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        setConstraints()

    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func headerConfigure(nameArray: [String], section: Int) {
        headerLabel.text = nameArray[section]
    }

    func setConstraints() {

        self.addSubview(headerLabel)
        NSLayoutConstraint.activate([
            headerLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            headerLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0)
        ])
    }
}
