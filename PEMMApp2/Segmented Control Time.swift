//
//  Segmented Control Time.swift
//  PEMMApp2
//
//  Created by Maria Bruno on 26/10/23.
//

import SwiftUI

struct Segmented_Control_Time: View {
    @State private var favouriteTime = 0
    
    var body: some View {
        VStack{
            Picker("What is your favourite time?", selection: $favouriteTime){
                Text("5-10 Mins").tag(0)
                Text("15-30 Mins").tag(1)
                Text("1 hour").tag(2)
            }
            .pickerStyle(.segmented)
            .frame(width: 335)
        }
    }
}
#Preview {
    Segmented_Control_Time()
}
