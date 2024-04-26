//
//  FrameBoot.swift
//  SwiftUIPrac
//
//  Created by Hitesh Dalvi on 06/02/24.
//

import SwiftUI

struct FrameBoot: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.green)
//            .frame(width: 200,height: 200,alignment: .leading)
//        frame(minWidth:0,idealWidth: 150, maxWidth: .infinity,minHeight:0,idealHeight: 150,maxHeight: .infinity,alignment: .center)
//            .frame (maxWidth: .infinity,maxHeight: .infinity,alignment: .center)
            .background(.red)
    }
}

#Preview {
    FrameBoot()
}
