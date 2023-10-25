//
//  AdviceCardView.swift
//  PEMMApp2
//
//  Created by Maria Bruno on 25/10/23.
//

import SwiftUI

struct AdviceCardView: View {
    
    var advice: Advice
    
    var body: some View {
        
        ScrollView {
            Text(advice.name)
                .font(.title)
                .bold()
                .padding()
            Text(advice.description)
                .padding()
            
            Image(advice.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height:200)
                .padding()
            
            
        }
        
    }
    
}

#Preview {
    AdviceCardView(advice: Advice(name: "The cat",
                                description: "It's great for lengthening your spine, improving flexibility, and preparing you for training. You start from a quadrupedal position with your hands resting on the ground parallel to your shoulders and your knees hip-width apart. you can fold a blanket and place it under your knees. The neck is in line with the back and the gaze is directed towards the mat. Now inhale deeply and push your shoulders back. Bring your belly out, lift your head and look straight ahead. As you exhale, push your navel upwards, lower your head and arch your back as much as possible, forming just a cat's hump. Throughout the exercise, your hands are parallel to your shoulders and your knees are at your hips. Repeat this movement 5 times, following the rhythm of your deep, slow breaths.",
                                imageName: "The cat image")
    )
}

