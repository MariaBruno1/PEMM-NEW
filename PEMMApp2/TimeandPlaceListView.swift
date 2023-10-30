//
//  TimeandPlaceListView.swift
//  PEMMApp2
//
//  Created by Maria Bruno on 25/10/23.
//

import SwiftUI

struct TimeandPlaceListView: View {
    @State private var currentDate = Date()
    var timeandplaceVM : [TimeandPlace] = TimeandPlaceModel().places
    
    var body: some View {
        
        NavigationStack{
            ZStack {
            Color("det")
                .ignoresSafeArea()
            ScrollView {
                ForEach(timeandplaceVM, id: \.id) { timeandplace in
                    NavigationLink {
                        if timeandplace.type == .home {
                            AdviceListView()
                        } else if timeandplace.type == .university {
                            UniversityAdviceListView()
                        } else if timeandplace.type == .work {
                            WorkAdviceViewList()
                        }
                    }label:{
                        TimeandPlaceCardView(timeandplace: timeandplace)
                            .padding()
                            .frame(width: 390.0, height: 210.0)
                    }
                  
                
                    
                }   .navigationTitle("Select time and place")
            }
        }}
    }
}
    



#Preview {
    TimeandPlaceListView ()
}
