//
//  AppStorageBoot.swift
//  SwiftUIPrac
//
//  Created by Hitesh Dalvi on 10/04/24.
//

import SwiftUI

struct AppStorageBoot: View {
//    @State var UserName : String?
    @AppStorage("name") var UserName : String?
    var body: some View {
        VStack(spacing:20){
            Text(UserName ?? "Add User Name")
            if let name = UserName {
                Text(name)
            }
            Button("Save".uppercased()){
                let name:String = "Dalvi"
                UserName = name
//                UserDefaults.standard.set(name, forKey:"name")
            }
        }
//        .onAppear{
//            UserName = UserDefaults.standard.string(forKey: "name")
//        }
    }
}

#Preview {
    AppStorageBoot()
}
