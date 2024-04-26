//
//  StacksBoot.swift
//  SwiftUIPrac
//
//  Created by Hitesh Dalvi on 07/02/24.
//

import SwiftUI

//VStack -> vertical
//HStack -> Horizontal
//ZSTack -> Z- index

struct StacksBoot: View {
    var body: some View {
//        HStack{
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
//            Rectangle()
//                .fill(Color.orange)
//                .frame(width: 100,height: 100)
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
//        }
//        VStack{
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
//            Rectangle()
//                .fill(Color.indigo)
//                .frame(width: 100,height: 100)
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
//        }
//        ZStack{
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
//            Rectangle()
//                .fill(Color.orange)
//                .frame(width: 80,height: 80)
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 40,height: 40)
//        }
//        ZStack(
//            alignment:.trailing,
//            content: {
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 125,height: 125)
//            Rectangle()
//                .fill(Color.indigo)
//                .frame(width: 100,height: 100)
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 65,height:65)
//        })
//        
//        ZStack(alignment: .top){
//        
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width:250,height: 300,alignment: .center)
//            VStack(alignment: .trailing){
//                Rectangle()
//                    .fill(Color.green)
//                    .frame(width:150,height: 150)
//                Rectangle()
//                    .fill(Color.indigo)
//                    .frame(width:100,height: 100)
//                
//               HStack(alignment: .bottom) {
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width:25,height: 25)
//                   Rectangle()
//                       .fill(Color.blue)
//                       .frame(width:50,height: 50)
//                   Rectangle()
//                       .fill(Color.blue)
//                       .frame(width:25,height: 25)
//               }.background(Color.white)
//            }
//            .background(Color.black)
//        }
        VStack(content: {
            Text("5")
                .font(.largeTitle)
                .foregroundColor(.red)
            Text("Placeholder")
                .font(.title)
                .shadow(color:Color(.black).opacity(0.87),radius: 10,x: 2.5,y: 2.5)
                .foregroundColor(Color("NeonColor"))
                .background(
                    Rectangle().fill(Color("CustomColor"))
                    .frame(width:100,height: 100)
                ).shadow(color:Color("CustomColor").opacity(0.87),radius: 10,x: 2.5,y: 12.5)
        })
    }
}

#Preview {
    StacksBoot()
}
