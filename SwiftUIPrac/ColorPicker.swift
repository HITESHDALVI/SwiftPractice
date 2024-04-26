//
//  ColorPicker.swift
//  SwiftUIPrac
//
//  Created by Hitesh Dalvi on 25/02/24.
//

import SwiftUI

struct ColorPickers: View {
    @State var bgcolour: Color =  .white
    var body: some View {
        
        ZStack  {
            bgcolour.edgesIgnoringSafeArea(.all)
            ColorPicker(
                selection: $bgcolour,
                supportsOpacity:true,
                label: {Text("Select a color")}
            )
            
        }
    }
}

#Preview {
    ColorPickers()
}
