//
//  TimeandPlaceCardView.swift
//  PEMMApp2
//
//  Created by Maria Bruno on 25/10/23.
//

import SwiftUI

struct TimeandPlaceCardView: View {
    let timeandplace: TimeandPlace
    
    var body: some View {
        ZStack(alignment:.bottomLeading) {
            Image(timeandplace.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame (width: 360, height: 200)
                .clipped()
            
            LinearGradient(colors: [.clear, .black.opacity(0.9)],
                           startPoint: .top,
                           endPoint: .bottom)
            VStack(alignment:.leading) {
                Text(timeandplace.name)
                    .font(.title)
                    .bold()
            }
            .foregroundStyle(.white)
            .padding()
        }
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .frame(width: 360 , height:190)
    }
}

#Preview {
    let timeandplace = TimeandPlace(name:"Home", imageName: "Home image")
    
    return TimeandPlaceCardView(timeandplace: timeandplace)
}

