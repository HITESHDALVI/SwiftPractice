//
//  FuncExtractBoot.swift
//  SwiftUIPrac
//
//  Created by Hitesh Dalvi on 15/02/24.
//

import SwiftUI

struct FuncExtractBoot: View {
    @State var bgColor : Color = Color.indigo
    
    func handlePress(){
        bgColor = bgColor == .orange ? .indigo : .orange
    }
    
    var contentLayer : some View{
        VStack{
            Text("Title")
                .font(.largeTitle)
            Button(action: {
                handlePress()
            }, label: {
                Text("Press Me")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }
            )
        }
    }
    
    var body: some View {
        ZStack{
            bgColor.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            contentLayer
        }
    }
}

#Preview {
    FuncExtractBoot()
}
