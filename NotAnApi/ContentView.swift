//
//  ContentView.swift
//  NotAnApi
//
//  Created by Tucker(School) on 8/3/21.
//

import SwiftUI

struct ContentView: View {
    //ahhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
    @ObservedObject var listFoods = ListFood()
    var body: some View {
        NavigationView {
            List {
                ForEach(listFoods.items) { item in
                    HStack {
                        VStack(alignment: .leading) {
                            Text("\(item.label)")
                                .font(.headline)
                            //is not a string so has to be in ""
                            Text(item.time)
                        }
                        Spacer()
                        Text("See more details")
                    }
                }
                .onMove(perform: { indices, newOffset in
                    listFoods.items.move(fromOffsets: indices, toOffset: newOffset)
                })
                .onDelete(perform: { indexSet in
                    listFoods.items.remove(atOffsets: indexSet)
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
    var time = String()
    var label = String()
    var calorie = Int()
    var fat = Float()
    var protien = Float()
    
}
