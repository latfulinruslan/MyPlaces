//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Ruslan Latfulin on 8/15/19.
//  Copyright © 2019 Ruslan Latfulin. All rights reserved.
//

import RealmSwift

class Place: Object {
    
    @objc dynamic var name = ""
    @objc dynamic var location: String?
    @objc dynamic var type: String?
    @objc dynamic var imageData: Data?
     
    
    let restaurantName = [
            "Burger Heroes", "Kitchen", "Bonsai",
            "Дастархан", "Индокитай", "X.O",
            "Балкан Гриль", "Sherlock Holmes",
            "Speak Easy", "Morris Pub", "Вкусные истории",
             "Классик", "Love&Life", "Шок", "Бочка"
        ]
    func savePlaces() {
        
        for restaurant in restaurantName {
            
            let image = UIImage(named: restaurant)
            
            guard let imageData = image?.pngData() else { return }
            
            let newPlace = Place()
            
            newPlace.name = restaurant
            newPlace.location = "Kobrin"
            newPlace.type = "Bar"
            newPlace.imageData = imageData
            
            StorageManager.saveObject(newPlace )
            
        }
    }
}
