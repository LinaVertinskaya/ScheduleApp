//
//  ContactModel.swift
//  MySchedule
//
//  Created by Лина Вертинская on 20.07.22.
//

import RealmSwift
import Foundation

class ContactModel: Object {

    @Persisted var contactsName = "Unknown"
    @Persisted var contactsPhone = "Unknown"
    @Persisted var contactsMail = "Unknown"
    @Persisted var contactsType = "Unknown"
    @Persisted var contactsImage: Data?
}
