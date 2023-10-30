//
//  BreathingAdviceListView.swift
//  PEMMApp2
//
//  Created by Maria Bruno on 27/10/23.
//

import SwiftUI

struct BreathingAdviceListView: View {
        
        var viewModel = BreathingAdviceModel()
        
        @State var selection: String = "5-10 Mins"
        let filterOption: [String] = ["5-10 Mins", "15-30 Mins", "1 Hour"]
        
        var body: some View {
           
                NavigationStack{
                    Picker(
                        selection: $selection,
                        label:
                            HStack {
                                Text("Challage:")
                                Text(selection)
                            }
                        ,
                        content: {
                            ForEach(filterOption, id: \.self){ option in
                                Text(option)
                                    .tag(option)
                                
                            }
                        }
                    )
                    .pickerStyle(.segmented)
                    .padding(.top)
                    
                    List{
                            ForEach(viewModel.breathingadvices) { breathingadvice in
                                
                                NavigationLink {
                                    BreathingAdviceCardView(breathingadvice: breathingadvice)
                                } label: {
                                    HStack {
                                        Text(breathingadvice.name)
                                            .padding()
                                    }
                                    
                                }
                            }
                            
                            
                            .padding()
                            
                    }.navigationTitle("Positions")
                    

                   }
                    }
                    }
#Preview {
    BreathingAdviceListView()
}
