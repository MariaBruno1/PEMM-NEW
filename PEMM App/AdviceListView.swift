//
//  AdviceListView.swift
//  PEMM App
//
//  Created by Maria Bruno on 25/10/23.
//

import SwiftUI

struct ContentView: View {
    
    var viewModel = AdviceModel()
    
    var body: some View {
        
        NavigationStack {
            List {
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
            }
        }
    }
}

#Preview {
    ContentView()
}
