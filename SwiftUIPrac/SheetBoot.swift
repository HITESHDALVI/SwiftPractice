//
//  SheetBoot.swift
//  SwiftUIPrac
//
//  Created by Hitesh Dalvi on 18/02/24.
//

import SwiftUI

struct SheetBoot: View {
    @State var issheet : Bool = false
    var body: some View {
        ZStack(alignment: .topTrailing ){
            Color.white.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Button(action:{
                    issheet.toggle()
                }, label: {
                    /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.blue).cornerRadius(10)
                }).fullScreenCover(isPresented: $issheet, content:  {ExtractedView()
                })
//                .sheet(isPresented: $issheet  , content:{
//                    ExtractedView()
//                })
            }
                
}
                
            }
        }
    


#Preview {
    SheetBoot()
}

struct ExtractedView: View {
    @Environment(\.presentationMode) var presentionMode
//    @Binding var issheet : Bool
    var body: some View {
        ZStack(alignment:.topTrailing) {
            Color.custom.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Button(action:{
                presentionMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "arrowshape.turn.up.backward.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40,height: 40)
                    .foregroundColor(.white)
            }).padding()
        }
    }
}
