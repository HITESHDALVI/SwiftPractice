//
//  DatePickersBoot.swift
//  SwiftUIPrac
//
//  Created by Hitesh Dalvi on 25/02/24.
//

import SwiftUI

struct DatePickersBoot: View {
    @State var date_time : Date = Date()
    var formatted_date:DateFormatter{
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }
    var body: some View {
        
        VStack{
            
            Text("Selected Date:")
            Text(formatted_date.string(from: date_time)
            ).font(.title)
            DatePicker("Select a Date", selection: $date_time)
                .accentColor(.custom)
                .datePickerStyle(GraphicalDatePickerStyle())
            
        }
    }
}

#Preview {
    DatePickersBoot()
}
