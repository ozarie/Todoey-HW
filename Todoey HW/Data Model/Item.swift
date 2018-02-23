//
//  Item.swift
//  Todoey HW
//
//  Created by Oz Arie Tal Shachar on 22.2.2018.
//  Copyright © 2018 Oz Arie Tal Shachar. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title : String = ""
    @objc dynamic var done : Bool = false
    @objc dynamic var dateCreated : Date?

    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
