//
//  MapView.swift
//  Landmarks
//
//  Created by Ahmad Dorra on 9/11/20.
//  Copyright © 2020 Ahmad Dorra. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    var coordinate: CLLocationCoordinate2D
    
    func makeUIView(context: Context) -> MKMapView {
           MKMapView(frame: .zero)
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
     
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: landmarkData[0].locationCoordinate)
    }
}
