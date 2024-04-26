//
//  StepperBoot.swift
//  SwiftUIPrac
//
//  Created by Hitesh Dalvi on 25/02/24.
//

import SwiftUI

struct StepperBoot: View {
    @State var step: Int = 1
    var body: some View {

        VStack{
            Text("\(step)")
                .font(.title)
                .foregroundColor(.custom)
            Stepper("Stepper", value: $step)
                .accentColor(.red)
                .foregroundColor(.indigo)
                .padding(8)
                .font(.title2)
                .fontWeight(.bold)
                .frame(width: UIScreen.main.bounds.width/1.75)
                .background(.gray.opacity(0.25))
                .cornerRadius(10)
 
        }.padding()
    }
}

#Preview {
    StepperBoot()
}
