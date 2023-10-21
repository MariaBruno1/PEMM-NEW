//
//  TimeandPlaceListView.swift
//  PEMM App
//
//  Created by Maria Bruno on 21/10/23.
//

import SwiftUI

struct TimeandPlaceListView: View {
    @State private var currentDate = Date()
    var timeandplaceVM = TimeandPlaceModel()
    var body: some View {
        
        NavigationStack {
            VStack {
                DatePicker("", selection: $currentDate, displayedComponents: .hourAndMinute)
                    .labelsHidden()
            }
            ScrollView {
                ForEach(timeandplaceVM.places) { timeandplace in TimeandPlaceCardView(timeandplace: timeandplace)
                        .padding()
                        .frame(width: 400.0, height: 220.0)
                }
                .navigationTitle("Select time and place")
            
                
            }
            
        }
    }
}
                
#Preview {
    TimeandPlaceListView()
}
