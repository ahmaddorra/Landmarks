//
//  CircleImage.swift
//  Landmarks
//
//  Created by Ahmad Dorra on 9/11/20.
//  Copyright © 2020 Ahmad Dorra. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var image : Image
    var body: some View {
        image.resizable()
        .frame(width: 270, height: 270)
        .clipShape(Circle())
            .overlay(Circle().stroke(Color.white,lineWidth: 4))
        .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
