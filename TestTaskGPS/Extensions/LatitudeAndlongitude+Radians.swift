//
//  LatitudeAndlongitude+Radians.swift
//  TestTaskGPS
//
//  Created by Evgenii on 24.03.2023.
//

import Foundation
import CoreLocation

extension CLLocationDegrees {
    func toRadians() -> CLLocationDegrees {
        return self * .pi / 180
    }
}
