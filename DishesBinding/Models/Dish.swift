//
//  Dish.swift
//  DishesBinding
//
//  Created by Òscar Muntal on 2/4/23.
//

import Foundation
import SwiftUI

struct Dish: Identifiable {
    let id = UUID()
    let name: String
    let imageURL: String
    let isSpicy: Bool
}
