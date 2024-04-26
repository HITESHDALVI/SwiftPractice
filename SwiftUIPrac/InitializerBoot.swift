//
//  InitializerBoot.swift
//  SwiftUIPrac
//
//  Created by Hitesh Dalvi on 08/02/24.
//

import SwiftUI

struct InitializerBoot: View {
    let bgColor : Color   = Color(.custom)
    let NeonColor : Color = Color(.neon)
    let count : Int
    let title : String
    
    init(  count: Int,title : String) {
        self.count = count
        self.title = title
    }
    
    enum initEnum {
        case apple
        case orange
    }
    
    var body: some View {
        VStack{
            Text("\(count)")
                .foregroundColor(.red)
                .font(.largeTitle)
            Text("\(title)")
                .foregroundColor(.neon)
                .font(.system(size: 18))
            
        }
        .frame(width: 150,height: 150)
        .background(bgColor)
        .cornerRadius(10)
        .shadow(color: bgColor.opacity(0.78) , radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/,x:5,y:8)
//        .padding(25)
//        .background(NeonColor)
//        .cornerRadius(10)
    }
}

//
//#Preview {
//    InitializerBoot()
//}

struct InitializerBoot_preview :PreviewProvider {
    static var previews: some View{
        InitializerBoot(count:25,title:"Custom initilizer")
    }
}

