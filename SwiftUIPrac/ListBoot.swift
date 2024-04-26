//
//  ListBoot.swift
//  SwiftUIPrac
//
//  Created by Hitesh Dalvi on 18/02/24.
//

import SwiftUI

struct ListBoot: View {
    @State var fruits : [String] = ["Apple", "Orange", "Banana" , "Kiwi", "Pineapple", "WaterMelon", "BlueBerry", "Almonds","Cashew", "Pistaco", "Grapes"]
    func deleteItem(indexSet:IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    func addItem() {
        fruits.append("Coconut")
    }
    func moveItem(indexSet: IndexSet, newOffset:Int) {
         fruits.move(fromOffsets: indexSet, toOffset: newOffset)
    }
    var addButton : some View
    {
        Button("Add", action: {
            addItem()
        })
    };
    var body: some View {
        NavigationView{
            List{
                Section(
                    header:Text("Fruits"))
                {
                         ForEach(fruits,id:\.self)
                            {
                                fruit in Text("\(fruit)")
                            }
                            .onDelete(perform: deleteItem)
                            .onMove(perform:moveItem)
               }
            }.accentColor(.purple)
//            .listStyle(GroupedListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton(),trailing:addButton )
        
        }
        .accentColor(.red)
    }
}

#Preview {
    ListBoot()
}
