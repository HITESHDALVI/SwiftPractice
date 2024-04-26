//
//  ForEachBoot.swift
//  SwiftUIPrac
//
//  Created by Hitesh Dalvi on 08/02/24.
//

import SwiftUI

struct ForEachBoot: View {
    var body: some View {
        VStack{
            ForEach(0..<10) { Index in
                Text("Index is : \(Index)")
             }
        }
    }
}

#Preview {
    ForEachBoot()
}
