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
        NavigationView {
            NavigationLink(destination: TimeandPlaceListView(), label:{
                NavigationStack {
                    ZStack {
                        Color("det")
                            .ignoresSafeArea()
                        VStack{
                            ScrollView {
                                ForEach(exerciseVM.exercises) { exercise in
                                    ExerciseCardView(exercise: exercise)
                                        .padding()
                                        .frame(width: 390.0, height: 210.0)
                                    
                                }
                            }
                        }
                        .navigationTitle ("Select the exercise")
                    }
                    
                }
                
                }
            )}
    }
}
                
                           
    

    


#Preview {
    ExerciseListView()
}
