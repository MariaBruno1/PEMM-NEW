//
//  PilatesAdviceCardView.swift
//  PEMMApp2
//
//  Created by Maria Bruno on 28/10/23.
//


import SwiftUI

struct PilatesAdviceCardView: View {
    var pilatesadvice: PilatesAdvice
    var body: some View {
            ZStack{
                Color("det")
                    .ignoresSafeArea()
                
                ScrollView {
                    Text(pilatesadvice.name)
                        .font(.title)
                        .bold()
                        .padding()
                    Text(pilatesadvice.description)
                        .padding()
                    
                    Image(pilatesadvice.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height:200)
                        .padding()
                    
                    
                    
                }
                
            }
            
        }
    }


#Preview {
    PilatesAdviceCardView(pilatesadvice: PilatesAdvice(name: "Pelvic Curl", description: "1. Start by laying on your back, with knees bent. Knees and heels are about sit- bone distance apart. Arms are long, and pressing into the mat beside your hips. 2. Inhale pause, then exhale: Engage your low abdominals, drawing your pelvis underneath you. The goal is to tuck your pelvis without the use of your glutes. You want your low back to feel light as a feather when it touches the mat. 3. Begin to engage your glutes, and articulate through the spine, the hips moving upward until your body is in a straight line between knees and shoulder blades. 4. Inhale pause, breathing through your ribs. Find stability through your center and down into arms and legs. 5. Exhale, and begin to drop your sternum — melting into the mat one vertebrae at a time. If you notice your lumbar (low back) is tight, or have a hard time articulating, tap into your low abdominal curl and release the glutes as your approach the mat.",
                                                       imageName: "Pelvic curl image", place: "Home")
                                           
                         )
                     }


