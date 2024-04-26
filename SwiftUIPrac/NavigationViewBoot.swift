//
//  NavigationViewBoot.swift
//  SwiftUIPrac
//
//  Created by Hitesh Dalvi on 18/02/24.
//

import SwiftUI

struct NavigationViewBoot: View {
    var body: some View {
        NavigationView {
            ScrollView(content: {
                NavigationLink("Color Boot",destination:  ColorBoot())
                NavigationLink("Scrollview Boot",destination: ScrollviewBoot())
                NavigationLink("Transition Boot",destination: TransitionBoot())
                NavigationLink("Animation Boot",destination: AnimationBoot())
                NavigationLink("BackgroundAndOverlay Boot",destination: BackgroundAndOverlayBoot())
            })
            .navigationTitle("Navigation")
//            .navigationBarTitleDisplayMode(.automatic)
//            .navigationBarHidden(true)
        }
        
    }
}

#Preview {
    NavigationViewBoot()
}
