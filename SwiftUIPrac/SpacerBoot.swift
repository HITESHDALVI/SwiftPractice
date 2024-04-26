//
//  SpacerBoot.swift
//  SwiftUIPrac
//
//  Created by Hitesh Dalvi on 08/02/24.
//

import SwiftUI

struct SpacerBoot: View {
    var body: some View {
 
        VStack{
            HStack(spacing: 0){
    //            Rectangle()
    //                .fill(Color("CustomColor"))
    //                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100,alignment: .center)
    //            Spacer()
    //                .frame(height: 10)
    //                .background(Color.gray)
    //            Rectangle()
    //                .fill(Color("NeonColor"))
    //                .frame(width: 100,height: 100,alignment: .center)
                Image(systemName: "location.fill.viewfinder").font(.title).foregroundColor(Color("CustomColor"))
                Spacer()
                    .frame(height: 10)
//                    .background(Color.gray)
                Image(systemName: "arkit").font(.title).foregroundColor(Color("NeonColor"))
            }
            .padding(.horizontal)
            
            Spacer()
//                .frame(width: 10)
//                .background(Color.gray)
            Rectangle()
                .frame(height: 55)
//                .background(Color.cyan)

        }
        .background(Color.blue)
    }
}

#Preview {
    SpacerBoot()
}
