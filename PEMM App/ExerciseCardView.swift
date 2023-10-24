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
                .aspectRatio(contentMode: .fill)
                .frame (width: 360, height: 200)
                .clipped()
            
            LinearGradient(colors: [.clear, .black.opacity(0.9)],
                           startPoint: .top,
                           endPoint: .bottom)
            VStack(alignment:.leading) {
                Text(exercise.name)
                    .font(.title)
                    .bold()
            }
            .foregroundStyle(.white)
            .padding()
        }
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .frame( width: 360 , height:190  )
    }
}

#Preview {
    let exercise = Exercise(name:"Yoga", imageName: "Yoga image")
    return ExerciseCardView(exercise: exercise)
    
}
