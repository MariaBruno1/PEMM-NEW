//
//  ContentView.swift
//  PEMM App
//
//  Created by Maria Bruno on 20/10/23.
//

import SwiftUI

struct ExerciseListView: View {
    
    var teamVM = ExercisesViewModel()
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                ForEach(teamVM.teams) { team in
                    TeamCardView(team: team)
                        .padding()
                }
            }
            .navigationTitle("Select the type of exercise")
        }
        
    }
    
}
#Preview {
    ContentView()
}
