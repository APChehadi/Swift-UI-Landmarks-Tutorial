//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Adam Chehadi on 12/21/19.
//  Copyright © 2019 Adam Chehadi. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    let landmark: Landmark
    
    var body: some View {
        VStack {
            landmark.image
                .resizable()
                .frame(width: 300, height: 400)
                .cornerRadius(40)
                .shadow(radius: 20)
            
            .padding(.bottom, 12)
            
            HStack {
                Text(landmark.name)
                
                Spacer()
                
                if landmark.isFavorite {
                    Image(systemName: "star.fill")
                        .imageScale(.medium)
                        .foregroundColor(.yellow)
                }
            }
            .padding()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarkData[0])
//        Group {
//            LandmarkRow(landmark: landmarkData[0])
//            LandmarkRow(landmark: landmarkData[1])
//        }
//        .previewLayout(.fixed(width: 300, height: 70))
    }
}
