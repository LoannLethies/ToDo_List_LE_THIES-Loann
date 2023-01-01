//
//  todo.swift
//  TP_Loann
//
//  Created by Loann Le Thies on 09/11/2022.
//

import Foundation
import UIKit

class Todo {
    var nom : String
    var description : String
    var check : Bool
    var date : Date
    
    init(nom : String, description : String, check : Bool, date : Date) {
        self.nom = nom
        self.description = description
        self.check = check
        self.date = date
    }
}
