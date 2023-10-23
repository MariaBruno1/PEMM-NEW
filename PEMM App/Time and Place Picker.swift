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
            Picker(selection: .constant(1), label: Text("Picker")) {
                Text("10-15 Mins").tag(0)
                Text("15-30 Mins").tag(1)
                Text("1 Hour").tag(2)
                Text("more...").tag(3)
                    
            }
        }
    }
    }

#Preview {
    Time_and_Place_Picker()
}
