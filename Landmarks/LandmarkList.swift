//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Ahmad Dorra on 9/12/20.
//  Copyright © 2020 Ahmad Dorra. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
//    @State var showFavoritesOnly = false
    @EnvironmentObject var userData: UserData
    
    
    var body: some View {
//        NavigationView {  in home now
            List() {
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(userData.landmarks){landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Landmarks"))
//        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
//           ForEach(["iPhone X", "iPhone XS Max"], id: \.self) { deviceName in
        NavigationView {
        LandmarkList().environmentObject(UserData())
        }
//                     .previewDevice(PreviewDevice(rawValue: deviceName))
//            .previewDisplayName(deviceName)
//             }

    }
}
