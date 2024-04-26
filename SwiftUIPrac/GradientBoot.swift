//
//  GradientBoot.swift
//  SwiftUIPrac
//
//  Created by Hitesh Dalvi on 05/02/24.
//

import SwiftUI

struct GradientBoot: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        RoundedRectangle(cornerRadius: 10)
            .fill(
//                LinearGradient(gradient:Gradient(colors:[Color("CustomColor"),Color.red]), startPoint: .topLeading,endPoint: .bottomTrailing))
                RadialGradient(gradient: Gradient(colors:[Color("CustomColor"),Color.red]),center:.center ,startRadius: 5,endRadius:50))
            .frame(width: 275,height: 125)
        
    }
}

#Preview {
    GradientBoot()
}
