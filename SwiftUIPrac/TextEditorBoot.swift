//
//  TextEditorBoot.swift
//  SwiftUIPrac
//
//  Created by Hitesh Dalvi on 20/02/24.
//

import SwiftUI

struct TextEditorBoot: View {
    @State var address : String = ""
    var body: some View {
        NavigationView{
            VStack{
                TextField("Please Enter Address", text: $address)
                    .frame(height: 250)
                    .background(.gray.opacity(0.3))
                    .padding(.vertical)
                 Button( action:{
                    
                },label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .background(.blue)
                        .cornerRadius(10)
                })
                Spacer()
            }.padding()
                .navigationTitle("Text Editor")
        }
    }
}

#Preview {
    TextEditorBoot()
}
