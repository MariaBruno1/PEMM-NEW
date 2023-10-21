//
//  TimeandPlaceCardView.swift
//  PEMM App
//
//  Created by Maria Bruno on 21/10/23.
//

import SwiftUI

struct TimeandPlaceCardView: View {
    let timeandplace: TimeandPlace
    
    var body: some View {
        ZStack(alignment:.bottomLeading) {
            Image(timeandplace.imageName)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame (height: 200.0)
                .clipped()
            
            LinearGradient(colors: [.clear, .black.opacity(0.4)],
                           startPoint: .top,
                           endPoint: .bottom)
            VStack(alignment:.leading) {
                Text(timeandplace.name)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
            }
            .foregroundStyle(.white)
            .padding()
        }
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .frame(height:206.0)
    }
}

#Preview {
    let timeandplace = TimeandPlace(name:"Home", imageName: "Home image")
    
    return TimeandPlaceCardView(timeandplace: timeandplace)
}

