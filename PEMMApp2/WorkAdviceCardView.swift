//
//  WorkAdviceCardView.swift
//  PEMMApp2
//
//  Created by Maria Bruno on 26/10/23.
//

import SwiftUI

struct WorkAdviceCardView: View {
    var workadvice: WorkAdvice
    
    var body: some View {
        ZStack{
            Color("det")
                .ignoresSafeArea()
            
            ScrollView {
                Text(workadvice.name)
                    .font(.title)
                    .bold()
                    .padding()
                Text(workadvice.description)
                    .padding()
                
                Image(workadvice.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height:200)
                    .padding()
                
                
            }
            
            
        }
        
    }
}

#Preview {
    WorkAdviceCardView(workadvice: WorkAdvice(name: "Seated Twist",
                                              description: "Start by sitting in your chair with your back against the backrest. As you inhale, lift your arms over your head and as you exhale, twist to your right, placing both hands on the right armrest for support. Sitting in an armless chair? Place your right hand on the seat, behind your pelvis, and place your left hand on your right thigh. Lengthen your spine with every inhale, allowing your body to stretch deeper into the pose. Hold the pose on each side for up to 60 seconds, and then switch sides.",
                                              imageName: "Seated Twist image", location: "Work")
                       
    )
}
