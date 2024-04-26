//
//  PickerBoot.swift
//  SwiftUIPrac
//
//  Created by Hitesh Dalvi on 24/02/24.
//

import SwiftUI

struct PickerBoot: View {
    @State var picker :String = "1"
    var body: some View {
        VStack {
            HStack{
                Text("Age :")
                Text(picker)
            }
            
            Picker(
               selection: $picker,
               label: Text("Picker"),
               content: {
                   ForEach(18..<100, content: { number in
                       Text("\(number)")
                           .font(.headline)
                           .fontWeight(.bold)
                           .foregroundColor(.red)
                           .tag("\(number)")
                   })
               }
            ).pickerStyle(DefaultPickerStyle())
            .frame(width: UIScreen.main.bounds.width-25)
            .background(Color.gray.opacity(0.3))
       }
    }
}

#Preview {
    PickerBoot()
}
