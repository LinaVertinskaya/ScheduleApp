//
//  ColorTaskTableViewController.swift
//  MySchedule
//
//  Created by Лина Вертинская on 15.07.22.
//

import UIKit

class TaskColorsTableViewController: UITableViewController {

    let idTaskColorCell = "idTaskColorCell"
    let idTaskScheduleHeader = "idTaskScheduleHeader"

    let headerNameArray = ["RED", "ORANGE", "YELLOW", "GREEN", "BLUE", "DEEP BLUE", "PURPLE"]

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Color Tasks"

        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        tableView.separatorStyle = .none
        tableView.bounces = false
        tableView.register(ColorsTableViewCell.self, forCellReuseIdentifier: idTaskColorCell)
        tableView.register(HeaderOptionsTableViewCell.self, forHeaderFooterViewReuseIdentifier: idTaskScheduleHeader)
    }

    private func setColor(color: String) {
        let taskOptions = self.navigationController?.viewControllers[1] as? TaskOptionsTableViewController
        taskOptions?.hexColorCell = color
        taskOptions?.tableView.reloadRows(at: [[3,0]], with: .none)
        self.navigationController?.popViewController(animated: true)
    }

    // MARK: - UITableViewDelegate, UITabvleViewDataSource

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 7
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: idTaskColorCell, for: indexPath) as! ColorsTableViewCell
        cell.cellConfigure(indexPath: indexPath)
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }

    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: idTaskScheduleHeader) as! HeaderOptionsTableViewCell
        header.headerConfigure(nameArray: headerNameArray, section: section)
        return header
    }

    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.section {
        case 0: setColor(color: "BE2813")
        case 1: setColor(color: "EC3C1A")
        case 2: setColor(color: "F3AF22")
        case 3: setColor(color: "579F2B")
        case 4: setColor(color: "3DACF7")
        case 5: setColor(color: "3802DA")
        case 6: setColor(color: "5D11F7")
        default:
            setColor(color: "FFFFFF")
        }
    }
}

