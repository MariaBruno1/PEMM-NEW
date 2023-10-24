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
            ZStack {
                Color("det")
                    .ignoresSafeArea()
                VStack {Picker(selection: .constant(1), label:
                    Text("Picker")) {
                    Text("10-15 Mins").tag(0)
                    Text("15-30 Mins").tag(1)
                    Text("1 Hour").tag(2)
                    Text("more...").tag(3)
                    
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
    }
    
}
#Preview {
    TimeandPlaceListView()
}
