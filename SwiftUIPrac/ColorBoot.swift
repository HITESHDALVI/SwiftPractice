//
//  ColorBoot.swift
//  SwiftUIPrac
//
//  Created by Hitesh Dalvi on 05/02/24.
//

import SwiftUI

struct ColorBoot: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 12.5).fill(
//            Color(#colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1))
            Color("CustomColor")
        ).shadow( color: Color("CustomColor").opacity(0.67), radius: 12,x:10.0,y:10.0)
        .frame(width: 250,height: 100)
    }
}

#Preview {
    ColorBoot()
}
