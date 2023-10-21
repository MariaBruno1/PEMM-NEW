//
//  ExerciseCardView.swift
//  PEMM App
//
//  Created by Maria Bruno on 20/10/23.
//

import SwiftUI

struct ExerciseCardView: View {
    
    let exercise: Exercise
    var body: some View {
        ZStack(alignment:.bottomLeading) {
            Image(exercise.imageName)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame (height: 200)
                .clipped()
            
            LinearGradient(colors: [.clear, .black.opacity(0.9)],
                           startPoint: .top,
                           endPoint: .bottom)
            VStack(alignment:.leading) {
                Text(exercise.name)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
            }
            .foregroundStyle(.white)
            .padding()
        }
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .frame(height:190)
    }
}

#Preview {
    let exercise = Exercise(name:"Yoga", imageName: "Yoga image")
    return ExerciseCardView(exercise: exercise)
    
}
