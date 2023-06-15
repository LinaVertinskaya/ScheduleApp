//
//  TaskModel.swift
//  MySchedule
//
//  Created by Лина Вертинская on 20.07.22.
//

import RealmSwift
import Foundation

class TaskModel: Object {

    @Persisted var taskDate: Date?
    @Persisted var taskName: String = "Unknown"
    @Persisted var taskDescription: String = "Unknown"
    @Persisted var taskColor: String = "3802DA"
    @Persisted var taskReady: Bool = false
}
