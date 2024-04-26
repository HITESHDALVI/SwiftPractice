//
//  SliderBoot.swift
//  SwiftUIPrac
//
//  Created by Hitesh Dalvi on 25/02/24.
//

import SwiftUI

struct SliderBoot: View {
    @State var value:Double = 0
    @State var bgColor:Color = .green
    var body: some View {
        VStack{
            Text("Rating : \(String(format: "%.2f", value))")
                .font(.title2)
                .foregroundColor(.indigo)
                .fontWeight(.medium)
//            Slider(value: $value,in: 0...100,step:0.25)
//                .accentColor(.red)
            
            Slider(
                value: $value,
                in: 1...100,
                step:1.0,
                
                label: {Text("AQI :\(value)")},
                
                minimumValueLabel: {
                    Text("Good AQI")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.green)
                },
                maximumValueLabel: {
                    Text("UnHealthy AQI")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.red)},
                onEditingChanged:{(_) in
                    switch value {
                    case 1..<20:
                        bgColor = .mint
                    case 21..<40:
                        bgColor = .green
                    case 41..<60:
                        bgColor = .yellow
                    case 61..<80:
                        bgColor = .orange
                    case 81..<100:
                        bgColor = .red
                    default:
                        bgColor = .cyan
                    }
                }
            )
            .labelStyle(TitleAndIconLabelStyle())
            .accentColor(bgColor)
            
        }.padding()
    }
}

#Preview {
    SliderBoot()
}
