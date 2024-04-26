//
//  ImageBoot.swift
//  SwiftUIPrac
//
//  Created by Hitesh Dalvi on 06/02/24.
//

import SwiftUI

struct ImageBoot: View {
    var body: some View {
        Image("offer")
//            .renderingMode(.template)
            .resizable()
            .scaledToFit()
//            .scaledToFill()
//            .aspectRatio(contentMode: .fit)
            .frame(width: 250,height: 250)
//            .clipped()
//            .cornerRadius(250)
//            .clipShape(
//                RoundedRectangle(cornerRadius:25)
//                Ellipse()
//                Circle()
//     )
            .foregroundColor(.orange)
    }
}

#Preview {
    ImageBoot()
}
