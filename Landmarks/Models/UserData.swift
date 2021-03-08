//
//  UserData.swift
//  Landmarks
//
//  Created by Ahmad Dorra on 9/12/20.
//  Copyright © 2020 Ahmad Dorra. All rights reserved.
//

import SwiftUI
import Combine

final class UserData : ObservableObject {
    @Published var showFavoritesOnly : Bool = false
    @Published var landmarks = landmarkData
     @Published var profile = Profile.default
}
