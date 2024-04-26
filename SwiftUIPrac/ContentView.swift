//
//  ContentView.swift
//  SwiftUIPrac
//
//  Created by Hitesh Dalvi on 05/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint).foregroundColor(.orange)
//            Text("Hello, Hitesh! Hii there this is swift practice. best of luck for the course".capitalized)
//                .font(.system(size: 20,design: .rounded))
//                .fontWeight(.semibold)
//                .padding(15)
////                .background(Color.green)
//                .border(Color.orange, width: 5)
//                .foregroundColor(Color.indigo).multilineTextAlignment(.center).baselineOffset(11)
//                .kerning(1.25)
//                .frame(width: 300,height: 300,alignment: .center)
//                .minimumScaleFactor(0.2)
//                .underline()
//                .italic()
//                .strikethrough(true,color:Color.cyan)
            HStack
            {
                RoundedRectangle(cornerRadius: 15).trim(from : 0.1, to: 1.0)
    //                .foregroundColor(.blue)
    //                .fill(.pink)
                    .stroke(Color.orange,
                            style:
                                StrokeStyle(lineWidth: 12.5
    //                                        lineCap: .round,dash:[40]
                                           ))
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100).rotationEffect(.degrees(180))
                   
                RoundedRectangle(cornerRadius: 15).trim(from : 0.1, to: 1.0)
    //                .foregroundColor(.blue)
//                    .fill(.pink)
                    .stroke(Color.orange,
                            style:
                                StrokeStyle(lineWidth: 12.5
    //                                        lineCap: .round,dash:[40]
                                           ))
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100).rotationEffect(.degrees(0)).padding(10)
                   
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
