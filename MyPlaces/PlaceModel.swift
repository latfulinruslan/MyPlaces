//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Ruslan Latfulin on 8/15/19.
//  Copyright © 2019 Ruslan Latfulin. All rights reserved.
//

import UIKit

struct Place {
    
    var name: String
    var location: String?
    var type: String?
    var image: UIImage?
    var restaurantImage: String?
    
    static let restaurantName = [
            "Burger Heroes", "Kitchen", "Bonsai",
            "Дастархан", "Индокитай", "X.O",
            "Балкан Гриль", "Sherlock Holmes",
            "Speak Easy", "Morris Pub", "Вкусные истории",
             "Классик", "Love&Life", "Шок", "Бочка"
        ]
    static func getPlaces() -> [Place] {
        
        var places = [Place]()
        
        for restaurant in restaurantName {
            places.append(Place(name: restaurant, location: "Kobrin", type: "Bar", image: nil, restaurantImage: restaurant))
        }
        
        return places
    }
}
