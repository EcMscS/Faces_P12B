//
//  Person.swift
//  Faces
//
//  Created by Jeffrey Lai on 12/26/19.
//  Copyright © 2019 Jeffrey Lai. All rights reserved.
//

import UIKit

class Person: NSObject {

    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
    
}
