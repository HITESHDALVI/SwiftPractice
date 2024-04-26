//
//  ExtractSubViewBoot.swift
//  SwiftUIPrac
//
//  Created by Hitesh Dalvi on 15/02/24.
//

import SwiftUI

struct FruitSaladArray {
    let title: String
    let count: Int
    let color: Color
}
struct ExtractSubViewBoot: View {
    let fruitSalad = [
        FruitSaladArray(title:"Apples",count:1,color:Color.custom),
        FruitSaladArray(title:"Peach",count:10,color:Color.custom),
        FruitSaladArray(title:"Banana",count:13,color:Color.custom),
        FruitSaladArray(title:"Pineapple",count:17,color:Color.custom),
        FruitSaladArray(title:"Tomato",count:18,color:Color.custom),
        FruitSaladArray(title:"Jackfruit",count:21,color:Color.custom),
        FruitSaladArray(title:"Cashew",count:27,color:Color.custom),
        FruitSaladArray(title:"Almond",count:7,color:Color.custom),
        FruitSaladArray(title:"Pistaco",count:9,color:Color.custom),
        FruitSaladArray(title:"Coconut",count:12,color:Color.custom),
        FruitSaladArray(title:"BlueBerry",count:8,color:Color.custom),
        FruitSaladArray(title:"Raspberry",count:100,color:Color.custom)
    ]
    var body: some View {
        ZStack{
            Color.white.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            ScrollView(showsIndicators: false) {
                   ForEach(fruitSalad, id: \.count) { fruit in
                       MyView(title:fruit.title,count:fruit.count, color:fruit.color)
                   }
               
           }
           .padding()

        }
    }
     
}

#Preview {
    ExtractSubViewBoot()
}

struct MyView: View {
    let title : String
    let count : Int
    let color : Color
    var body: some View {
        VStack{
            Text("\(title)")
            Text("\(count)")
        }.frame(width: 250,height: 65 )
        .padding()
        .background(color)
        .cornerRadius(10)
        .shadow(radius: 5)
     
    }
}
