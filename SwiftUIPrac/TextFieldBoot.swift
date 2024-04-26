//
//  TextFieldBoot.swift
//  SwiftUIPrac
//
//  Created by Hitesh Dalvi on 19/02/24.
//

import SwiftUI

struct TextFieldBoot: View {
    @State var user_name :String = ""
    @State var datarr:[String] = []
    var body: some View {
        NavigationView {
            VStack{
                TextField("Enter Username...!", text:$user_name)
                    .padding(10)
                    .background(Color.gray.opacity(0.2).cornerRadius(8)).padding(15)
                    .foregroundColor(.red)
                    .font(.headline)
    //                .textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: save,label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: 45)
                        .background(Color.custom.cornerRadius(8)).padding(15)
                        .foregroundColor(.white)
                        .font(.headline)
                })
                
                ForEach(datarr, id:\.self){
                    data in
                    Text(data)
                }
               
                Spacer()
            }
            .padding()
            .navigationTitle("Text Field Boot")
        }
    }
    func save(){
        datarr.append(user_name)
        user_name = ""
    }
}

#Preview {
    TextFieldBoot()
}
