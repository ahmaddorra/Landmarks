//
//  ContentView.swift
//  Landmarks
//
//  Created by Ahmad Dorra on 9/11/20.
//  Copyright © 2020 Ahmad Dorra. All rights reserved.
//

import SwiftUI


struct LandmarkDetail: View {
    var landmark : Landmark
    @EnvironmentObject var userData: UserData
    var landmarkIndex: Int {
           userData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height:300)
            CircleImage(image: landmark.image)
                .offset(y:-130).padding(.bottom,-130)
//            ZStack{
//                MapView().frame(height:300)
//                CircleImage().offset(y:100)
//            }
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    Button(action: {
                        self.userData.landmarks[self.landmarkIndex].isFavorite.toggle()
                    }) {
                        if self.userData.landmarks[self.landmarkIndex].isFavorite {
                            Image(systemName: "star.fill")
                                .foregroundColor(Color.yellow)
                        } else {
                            Image(systemName: "star")
                                .foregroundColor(Color.gray)
                        }
                    }
                }
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }.font(.subheadline)
            }.padding()
        Spacer()
        }
        .navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0]).environmentObject(UserData())
    }
}
