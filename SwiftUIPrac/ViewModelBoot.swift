//
//  ViewModelBoot.swift
//  SwiftUIPrac
//
//  Created by Hitesh Dalvi on 04/03/24.
//

import SwiftUI

struct FruitModel{
    let id : String = UUID().uuidString
    let name:String
    let count:Int
}

struct ViewModelBoot: View {
    @State  var fruitArray : [FruitModel] = []
    
    var body: some View {
        NavigationView{
            List{
                 
                ForEach(fruitArray , id: \.count){fruit in
                    HStack {
                        Text("\(fruit.count)")
                            .foregroundColor(.red)
                        Text(fruit.name)
                            .bold()
                            .font(.headline)
                    }
                }
                .onDelete(perform: { indexSet in
                    deleteFruit(indexSet: indexSet)
                })
                
            }
            .navigationTitle("Fruit List")
            .onAppear{
                getFruits()
            }
        }
    }
    
    func getFruits (){
        let fruit0 =  FruitModel(name: "Apples", count: 10)
        let fruit1 = FruitModel(name: "Orange", count: 2)
        let fruit2 = FruitModel(name: "Banana", count: 12)
        let fruit3 = FruitModel(name: "WaterMelon", count: 14)
        let fruit4 = FruitModel(name: "Peach", count: 8)
        fruitArray.append(fruit0)
        fruitArray.append(fruit1)
        fruitArray.append(fruit2)
        fruitArray.append(fruit3)
        fruitArray.append(fruit4)

    }
    func deleteFruit (indexSet:IndexSet){
        fruitArray.remove(atOffsets: indexSet)
    }
}

#Preview {
    ViewModelBoot()
}
