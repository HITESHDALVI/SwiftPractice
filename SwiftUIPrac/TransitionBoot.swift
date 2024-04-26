//
//  TransitionBoot.swift
//  SwiftUIPrac
//
//  Created by Hitesh Dalvi on 18/02/24.
//

import SwiftUI

struct TransitionBoot: View {
    @State var showSheet : Bool = false
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack{
                Button("Transition",action:{
                    withAnimation(.easeInOut){
                        showSheet.toggle()
                    }
                })
                .padding(.top)
                .padding(10)
                 
                Spacer()
               if showSheet {
                    VStack{
                        Rectangle()
                            .fill(Color.custom)
                            .frame(height:UIScreen.main.bounds.height * 0.7)
                            .cornerRadius(25)
                            .padding(0)
                    }
                    .padding(0)
                    .transition(.move(edge: .bottom))
                }
                
            }
        }.edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    TransitionBoot()
}
