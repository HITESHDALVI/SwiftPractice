//
//  PaddingBoot.swift
//  SwiftUIPrac
//
//  Created by Hitesh Dalvi on 07/02/24.
//

import SwiftUI

struct PaddingBoot: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.yellow)
            .padding(.vertical,10)
            .padding(.horizontal,25)
            .background(Color.blue)
    }
}

#Preview {
    PaddingBoot()
}
