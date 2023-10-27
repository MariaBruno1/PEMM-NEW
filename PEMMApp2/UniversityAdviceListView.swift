//
//  UniversityAdviceListView.swift
//  PEMMApp2
//
//  Created by Maria Bruno on 26/10/23.
//

import SwiftUI

struct UniversityAdviceListView: View {
    var viewModel = UniversityAdviceModel()
    
    var body: some View {
                NavigationStack{
                    List{
                        ForEach(viewModel.universityadvices) { universityadvice in
                            
                            NavigationLink {
                                UniversityAdviceCardView(universityadvice: universityadvice)
                            } label: {
                                HStack {
                                    Text(universityadvice.name)
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
    UniversityAdviceListView()
}
