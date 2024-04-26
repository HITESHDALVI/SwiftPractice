//
//  BindingBoot.swift
//  SwiftUIPrac
//
//  Created by Hitesh Dalvi on 15/02/24.
//

import SwiftUI

struct BindingBoot: View {
    
    @State var bgColor : Color = Color.custom
    var body: some View {
        ZStack{
        bgColor.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            ExtView(bgColor : $bgColor)
    }
}
struct ExtView : View
{
    @Binding var bgColor: Color
    
    var body: some View {
        Button(action:{
            bgColor = Color.indigo
        }, label: {
            /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                .font(.title2)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(Color.blue).cornerRadius(10)
        })
    }
    }
}

#Preview {
    BindingBoot()
}
