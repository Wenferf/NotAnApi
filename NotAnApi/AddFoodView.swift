//
//  AddFoodView.swift
//  NotAnApi
//
//  Created by Tucker(School) on 8/3/21.
//

import SwiftUI

struct AddFoodView: View {
    
    @ObservedObject var listFoods = ListFood()
    @State private var label = ""
    @State private var time = ""
    //var calorie = Int()
    //var fat = Float()
    //var protien = Float()
    @Environment(\.presentationMode) var presentationMode
        static let meal = ["Breakfast", "Lunch", "Dinner", "Snack"]
    var body: some View {
        NavigationView {
                    Form {
                        Picker("Meal Selection", selection: $time) {
                            ForEach(Self.meal, id: \.self) { time in
                                Text(time)
                            }
                        }
                    }
                }
    }
}

struct AddFoodView_Previews: PreviewProvider {
    static var previews: some View {
        AddFoodView(listFoods: ListFood())
    }
}
