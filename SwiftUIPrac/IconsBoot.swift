//
//  IconsBoot.swift
//  SwiftUIPrac
//
//  Created by Hitesh Dalvi on 05/02/24.
//

import SwiftUI

struct IconsBoot: View {
    var body: some View {
        Image(systemName: "paperplane.fill")
            .resizable()
//            .aspectRatio(contentMode: .fill)
            .scaledToFit()
//            .scaledToFill()
//            .font(.largeTitle)
            .font(.system(size: 100))
            .foregroundColor(Color("CustomColor"))
            .frame(width: 225,height: 225)
            .clipped()
            .shadow(color:Color("CustomColor").opacity(0.67),radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    IconsBoot()
}
