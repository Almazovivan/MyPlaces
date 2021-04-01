//
//  StorageManager.swift
//  MyPlaces
//
//  Created by Ivan Almazov on 07/11/2020.
//  Copyright © 2018 Ivan Almazov. All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func saveObject(_ place: Place) {
        
        try! realm.write {
            realm.add(place)
        }
    }
    
    static func deleteObject(_ place: Place) {
        
        try! realm.write {
            realm.delete(place)
        }
    }
}
