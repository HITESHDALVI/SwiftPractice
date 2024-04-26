//
//  ActionSheetBoot.swift
//  SwiftUIPrac
//
//  Created by Hitesh Dalvi on 19/02/24.
//

import SwiftUI

struct ActionSheetBoot: View {
    @State var showSheet :Bool = false
    @State var actionSheetOption : ActionSheetOptions = .isOtherPost
    enum ActionSheetOptions{
        case isMyPost
        case isOtherPost
        
    }
    
    var body: some View {
        VStack{
            HStack{
                Circle()
                    .frame(width: 30,height: 30)
                Text("@user_name")
                Spacer()
                Button(
                    action: {
                        actionSheetOption = .isOtherPost
                        showSheet.toggle()
                    },
                    label: {
                        Image(systemName: "ellipsis")
                    }
                ).accentColor(.custom)
                
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0,contentMode: .fit)
        }
//        Button("Action", action: {showSheet.toggle()})
            .actionSheet(isPresented: $showSheet, content:ExtractedActionSheet)
    }
    func ExtractedActionSheet () -> ActionSheet{
//        let Button1 : ActionSheet.Button = .default(Text("Default sheet"))
//        let Button2 : ActionSheet.Button = .destructive(Text("destructive"))
//        let Button3 : ActionSheet.Button = .cancel()
//
//        return ActionSheet(
//            title: Text("Action Sheet"),
//            message: Text("Action Sheet message"),
//            buttons: [Button1,Button2,Button3]
//        )
        
        
        let shareBtn : ActionSheet.Button = .default(Text("Share")){
            
        }
        let reportBtn : ActionSheet.Button = .destructive(Text("Report")){
            
        }
        let deleteBtn : ActionSheet.Button = .destructive(Text("Delete")){
            
        }
        let cancelBtn : ActionSheet.Button = .cancel()
        
        let title = Text("What would you like to do!")
        
        switch actionSheetOption {
            case .isMyPost:
             return ActionSheet(
                title:title,
                message: nil,
                buttons: [shareBtn,deleteBtn,cancelBtn]
            )
            case .isOtherPost:
                return ActionSheet(
                    title: title,
                    message: nil,
                    buttons: [shareBtn,reportBtn,cancelBtn]
                )
            }
    }
}

#Preview {
    ActionSheetBoot()
}

 
