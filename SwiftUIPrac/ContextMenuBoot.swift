//
//  ContextMenuBoot.swift
//  SwiftUIPrac
//
//  Created by Hitesh Dalvi on 19/02/24.
//

import SwiftUI

struct ContextMenuBoot: View {
    
    @State var bg : Color = .orange
    
    var body: some View {
        VStack(alignment: .leading,spacing:10.0){
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swift Course")
                .font(.headline)
            Text("How to iuse Context menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(15)
        .background(bg)
        .cornerRadius(10)
        .contextMenu(ContextMenu(menuItems: {
            Button(action: {
                bg = .indigo
            }, label: {
                Label("Like",systemImage: "heart")
            })
            Button(action: {
                bg = .blue
            }, label: {
                Label("Save",systemImage: "bookmark")
            })
            Button(action: {
                bg = .green
            }, label: {
                Label("Share",systemImage: "paperplane")
            })
            Button(action: {
                bg = .red
            }, label: {
                Label("More",systemImage: "ellipsis")
            })
        }))
    }
}

#Preview {
    ContextMenuBoot()
}
