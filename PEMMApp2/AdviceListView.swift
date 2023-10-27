//
//  AdviceListView.swift
//  PEMMApp2
//
//  Created by Maria Bruno on 25/10/23.
//

import SwiftUI

struct ContentView: View {
    
    var viewModel = AdviceModel()
    
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
                        ForEach(viewModel.advices) { advice in
                            
                            NavigationLink {
                                AdviceCardView(advice: advice)
                            } label: {
                                HStack {
                                    Text(advice.name)
                                        .padding()
                                }
                                
                            }
                        }
                        
                        
                        .padding()
                        
                }.navigationTitle("Positions")
                
//                Picker(selection: .cosnstant(1) , label: Text("Challange")){
//                    Text("Challange accepted").tag(1)
//                    Text("Challange Unaccepted").tag(2)
//                }
                
                
                }
                
                
            }
            
        }
        
    


       




 

#Preview {
    ContentView()
}
