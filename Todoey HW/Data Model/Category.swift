//
//  Category.swift
//  Todoey HW
//
//  Created by Oz Arie Tal Shachar on 22.2.2018.
//  Copyright © 2018 Oz Arie Tal Shachar. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name : String = ""

    let items : List<Item> = List<Item>()
}
