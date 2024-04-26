//
//  ToogleBoot.swift
//  SwiftUIPrac
//
//  Created by Hitesh Dalvi on 24/02/24.
//

import SwiftUI

struct ToogleBoot: View {
    
    @State var toggle: Bool = false
    var body: some View {
        VStack {
            HStack(content: {
                Text("Status :").foregroundColor(.black)
                Text(toggle ? "Online" : "Offline")
                    .foregroundColor(toggle ? Color.green : Color.red)
            })
            Toggle(
                isOn: $toggle, label: {
                    /*@START_MENU_TOKEN@*/Text("Label")/*@END_MENU_TOKEN@*/
                }
            ).toggleStyle(SwitchToggleStyle(tint: Color.custom)).padding(.horizontal,140)
            Spacer()
        }
    }
}

#Preview {
    ToogleBoot()
}
