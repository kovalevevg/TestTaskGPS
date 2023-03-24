//
//  CLLocationDistance+DistanceInKm.swift
//  TestTaskGPS
//
//  Created by Evgenii on 20.03.2023.
//

import Foundation
import CoreLocation

extension CLLocationDistance {
    func distanceInKmString() -> String {
        let km = Int(self / 1000)
        let m = Int(self.truncatingRemainder(dividingBy: 1000))
        return String(format: "%d km %d m", km, m)
    }
}
