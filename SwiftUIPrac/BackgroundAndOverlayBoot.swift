//
//  BackgroundAndOverlayBoot.swift
//  SwiftUIPrac
//
//  Created by Hitesh Dalvi on 06/02/24.
//

import SwiftUI

struct BackgroundAndOverlayBoot: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//        Rectangle()
//            .fill(Color.purple)
//            .padding(10)
//            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
//            .overlay(
//                Rectangle()
//                .fill(Color.blue)
//                .frame(width: 50,height: 50)
//                     ,alignment: .topLeading
//            )
//            .background(Circle().fill(Color.blue))
//            .frame(width: 40,height: 125,alignment: .center)
//            .background(Rectangle().fill(Color.red)
//                .frame(width: 150,height: 150)
//                        ,alignment: .bottomTrailing)
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(
                    LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
                    .shadow(color: Color("CustomColor"), radius: 10,x:0.2,y:10)
                    .overlay(
                        Circle()
                            .fill(Color.red)
                            .frame(width: 25,height: 25)
                            .overlay(Text("5")
                                .font(.headline)
                                .foregroundColor(.white)
                            )
                        , alignment: .bottomTrailing
                    )
            )
//
        
    }
}

#Preview {
    BackgroundAndOverlayBoot()
}
