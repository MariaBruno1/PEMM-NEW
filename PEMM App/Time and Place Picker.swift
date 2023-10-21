//
//  Time and Place Picker.swift
//  PEMM App
//
//  Created by Maria Bruno on 21/10/23.
//

import SwiftUI

struct Time_and_Place_Picker: View {
    @State private var currentDate = Date()
    var body: some View {
        VStack {
            DatePicker("", selection: $currentDate, displayedComponents: .hourAndMinute)
                .labelsHidden()
        }
    }
    }

#Preview {
    Time_and_Place_Picker()
}
