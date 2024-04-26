//
//  StateBooot.swift
//  SwiftUIPrac
//
//  Created by Hitesh Dalvi on 15/02/24.
//

import SwiftUI

struct StateBooot: View {
    @State var bgColor : Color = Color.custom
    @State var myTitle : String = "My Title"
    @State var count : Int = 0
    var body: some View {
        ZStack{
            bgColor.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(spacing:20){
                Text(myTitle)
                    .font(.title)
                Text("Count : \(count)")
                    .font(.headline)
                    .underline()
                HStack(spacing: 20,content: {
                    Button("Button 1"){
                        bgColor = .red
                        myTitle = "This changes color to RED"
                        count += 1
                    }
                    Button("Button 2"){
                        bgColor = .green
                        myTitle = "This changes color to GREEN"
                        if count > 0 {
                            count -= 1
                        }
                        
                        
                    }
                })
            }.foregroundColor(.white)
        }
    }
}

#Preview {
    StateBooot()
}
