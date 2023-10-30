//
//  WorkAdviceViewList.swift
//  PEMMApp2
//
//  Created by Maria Bruno on 26/10/23.
//

import SwiftUI

struct WorkAdviceViewList: View {
    var viewModel = WorkAdviceModel()
    
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
                        ForEach(viewModel.workadvices) { workadvice in
                            
                            NavigationLink {
                                WorkAdviceCardView(workadvice: workadvice)
                            } label: {
                                HStack {
                                    Text(workadvice.name)
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
    WorkAdviceViewList()
}
