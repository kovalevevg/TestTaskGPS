//
//  Person.swift
//  TestTaskGPS
//
//  Created by Evgenii on 15.03.2023.
//

import Foundation

struct PersonData: Codable {
    let name: String
    var locations: PersonLocation
    let image: String
}

struct PersonLocation: Codable {
    var latitude: Double
    var longitude: Double
}
