//
//  ContentView.swift
//  NotAnApi
//
//  Created by Tucker(School) on 8/3/21.
//

import SwiftUI

struct ContentView: View {
    @State private var listFoods =
        [ListFoods(label: "Apple", calorie: 3, fat: 3.0),
         ListFoods(label: "Orange", calorie: 3, fat: 3.0),
         ListFoods(label: "Egg", calorie: 3, fat: 3.0)]
    var body: some View {
        NavigationView {
            List {
                ForEach(listFoods) { item in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(item.label)
                                .font(.headline)
                            //is not a string so has to be in ""
                            Text("Calories: \(item.calorie)")
                        }
                        Spacer()
                        Text("See more details")
                    }
                }
                .onMove(perform: { indices, newOffset in
                    listFoods.move(fromOffsets: indices, toOffset: newOffset)
                })
                .onDelete(perform: { indexSet in
                    listFoods.remove(atOffsets: indexSet)
                })
                
            }
            .navigationBarTitle("different foods")
            .navigationBarItems(leading: EditButton())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ListFoods: Identifiable {
    var id = UUID()
    var label = String()
    var calorie = Int()
    var fat = Float()
    var protien = Float()
    
}
