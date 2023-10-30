//
//  BreathingAdviceCardView.swift
//  PEMMApp2
//
//  Created by Maria Bruno on 27/10/23.
//

import SwiftUI

struct BreathingAdviceCardView: View {
    var breathingadvice: BreathingAdvice
    var body: some View {
            ZStack{
                Color("det")
                    .ignoresSafeArea()
                
                ScrollView {
                    Text(breathingadvice.name)
                        .font(.title)
                        .bold()
                        .padding()
                    Text(breathingadvice.description)
                        .padding()
                    
                    
                }
                
            }
            
        }
    }


#Preview {
    BreathingAdviceCardView(breathingadvice: BreathingAdvice(name: "Diaphragmatic Breathing",
                                                     description: "This technique involves taking slow, deep breaths that expand your diaphragm, the muscle located below your lungs. To do this exercise, find a comfortable seated position and place one hand on your chest and the other on your belly. Breathe in through your nose for about two seconds, making sure your belly expands as you inhale. Then exhale through your mouth for about four seconds, letting your belly fall inward. Repeat this for several minutes, focusing on the sensation of your breath moving in and out of your body.",
                                           place: "Home")
                                           
                         )
                     }


