//
//  AlertBoot.swift
//  SwiftUIPrac
//
//  Created by Hitesh Dalvi on 19/02/24.
//

import SwiftUI

struct AlertBoot: View {
    
    @State var showAlert : Bool = false
    @State var bg : Color = .orange
    
    var body: some View {
        ZStack {
            bg.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Button("Alert", action: {
                showAlert.toggle()
            })
            .foregroundColor(bg == .indigo ? .orange : .indigo)
            .font(.system(size: 25,weight: .bold))
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height:50)
            .border(bg == .indigo ? .orange : .indigo, width: 4)
            
            .alert(isPresented: $showAlert ,  content: {
                //                Alert(title: Text("Alert message shown here!..."))
                AlertPopUp()
            })
        }
    }
    func AlertPopUp () -> Alert{
        return Alert(
            title: Text("Alert boot practice Tutorials!"),
            message: Text("Error, Esists here!"),
            primaryButton: .destructive(
                Text("Delete"),
                action: {
                    bg = bg == .indigo ? .orange : .indigo
                }
            ),
            secondaryButton: .cancel())
    }
}

#Preview {
    AlertBoot()
}
