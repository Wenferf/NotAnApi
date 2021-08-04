//
//  ListFood.swift
//  NotAnApi
//
//  Created by Tucker(School) on 8/3/21.
//

import Foundation
class ToDoList: ObservableObject {
    @Published var items =
        [ListFoods(label: "Apple", calorie: 3, fat: 3.0),
         ListFoods(label: "Orange", calorie: 3, fat: 3.0),
         ListFoods(label: "Egg", calorie: 3, fat: 3.0)]
    
}
