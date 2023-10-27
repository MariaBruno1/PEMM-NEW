//
//  WorkAdviceViewList.swift
//  PEMMApp2
//
//  Created by Maria Bruno on 26/10/23.
//

import SwiftUI

struct WorkAdviceViewList: View {
    var viewModel = WorkAdviceModel()
    
    var body: some View {
            
            NavigationStack{
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
                        
                    }
                }
                
                
            }
            
        }
        
    


       



#Preview {
    WorkAdviceViewList()
}
