//
//  ContentView.swift
//  PEMM App
//
//  Created by Maria Bruno on 20/10/23.
//
import SwiftUI

struct ExerciseListView: View {
    var exerciseVM = ExerciseViewModel()
    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach(exerciseVM.exercises) { exercise in
                    ExerciseCardView(exercise: exercise)
                        .padding()
                }
                
            }
            .navigationTitle ("Select the Exercise")
        }
    }
}
        
    


#Preview {
    ExerciseListView()
}
