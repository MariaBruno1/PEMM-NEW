//
//  UniversityAdviceCardView.swift
//  PEMMApp2
//
//  Created by Maria Bruno on 26/10/23.
//

import SwiftUI

struct UniversityAdviceCardView: View {
    var universityadvice: University
    
    var body: some View {
        ZStack{
            Color("det")
                .ignoresSafeArea()
            
            ScrollView {
                Text(universityadvice.name)
                    .font(.title)
                    .bold()
                    .padding()
                Text(universityadvice.description)
                    .padding()
                
                Image(universityadvice.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height:200)
                    .padding()
                
                
            }
                
            }
            
        }
        
    }


#Preview {
    UniversityAdviceCardView (universityadvice: University (name: "Seated Cat & Cow",
                                             description: "Sit up straight and place your hands gently on your lap. As you inhale, press your chest and belly out as far as you can, arching your back. As you exhale, tuck your belly and chest so your spine makes a C-curve. Repeat 4-6 times.",
                                                            imageName: "Seated cat image", location: "University")
                 )
    
             }



