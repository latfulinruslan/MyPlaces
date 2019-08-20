//
//  StorageManager.swift
//  MyPlaces
//
//  Created by Ruslan Latfulin on 8/15/19.
//  Copyright © 2019 Ruslan Latfulin. All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func saveObject(_ object: Place) {
        try! realm.write {
            realm.add(object)
        }
    }
    
    static func deleteObject(_ object: Place) {
        try! realm.write {
            realm.delete(object)
        }
    }
}
