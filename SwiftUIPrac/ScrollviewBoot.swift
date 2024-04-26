//
//  ScrollviewBoot.swift
//  SwiftUIPrac
//
//  Created by Hitesh Dalvi on 14/02/24.
//

import SwiftUI

struct ScrollviewBoot: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false,content:{
            VStack{
                ForEach(0..<40) {_ in
                    ScrollView(.horizontal,showsIndicators: false,content: {
                        HStack(content: {
                            ForEach(0..<45, 
                                    content: {_ in 
                                Rectangle()
                                    .fill(Color.white)
                                    .frame(width: 150, height:  125)
                                    .cornerRadius(10)
                                    .opacity(0.34)
                                    .padding()
                                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            })
                            
                        })
                    })
                }
                
                
            }
        })
         
    }
}

#Preview {
    ScrollviewBoot()
}
