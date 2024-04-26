//
//  AnimationCurvesBoot.swift
//  SwiftUIPrac
//
//  Created by Hitesh Dalvi on 17/02/24.
//

import SwiftUI

struct AnimationCurvesBoot: View {
   let  timing: Double = 20.0
    @State var isAnimated: Bool = false
    
    var body: some View {
        ZStack{
            VStack{
            Button("Click", action:{
                withAnimation(Animation
                    .default) {
                    isAnimated.toggle()
                }
            })
            .font(.title2)
            .foregroundColor(.blue)
            .padding()
            .frame(width: 100,height: 100)
            
            Rectangle()
                    .fill(Color.custom)
                    .frame(width:isAnimated ?  350: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
                    .cornerRadius(10)
                    .animation(.spring(
                        response: 10.0, dampingFraction: 0.5, blendDuration: 4.0))
            Rectangle()
                .fill(Color.custom)
                .frame(width:isAnimated ?  350: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
                .cornerRadius(10)
                .animation(Animation.linear(duration: timing))
            Rectangle()
                .fill(Color.custom)
                .frame(width:isAnimated ?  350: 100,height: 100)
                .cornerRadius(10)
                .animation(Animation.easeInOut(duration: timing))

            Rectangle()
                .fill(Color.custom)
                .frame(width:isAnimated ?  350: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
                .cornerRadius(10)
                .animation(Animation.easeOut(duration: timing))
            Rectangle()
                .fill(Color.custom)
                .frame(width:isAnimated ?  350: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
                .cornerRadius(10)
                .animation(Animation.easeIn(duration: timing))
            }
        }
    }
}

#Preview {
    AnimationCurvesBoot()
}
