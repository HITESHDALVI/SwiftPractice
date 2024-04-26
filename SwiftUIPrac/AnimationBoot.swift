//
//  AnimationBoot.swift
//  SwiftUIPrac
//
//  Created by Hitesh Dalvi on 17/02/24.
//

import SwiftUI

struct AnimationBoot: View {
    @State var isAnimated:Bool = false
    var body: some View {
        ZStack{
            VStack{
            Button("Click", action:{
                withAnimation(Animation
                    .default
                    .repeatCount(5,autoreverses: true)) {
                    isAnimated.toggle()
                }
             
            })
            .font(.title2)
            .foregroundColor(.blue)
            .padding()
            .frame(width: 100,height: 100)
            Spacer()
            Rectangle()
                .fill(isAnimated ?  Color.custom : Color.red)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
                .cornerRadius(isAnimated ? 50 : 10)
                .rotationEffect(Angle(degrees:isAnimated ? -270 : 0))
                .offset(y:isAnimated ? -300 : 0)
            Spacer()
//                .animation(.easeIn)
            }
        }
    }
}

#Preview {
    AnimationBoot()
}
