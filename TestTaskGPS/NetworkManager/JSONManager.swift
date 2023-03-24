//
//  JSONManager.swift
//  TestTaskGPS
//
//  Created by Evgenii on 17.03.2023.
//

import Foundation

typealias PersonCompletionBlock = (_ person: [PersonData]?,_ error: Error?) -> ()

protocol NetworkManagerProtocol: AnyObject {
    func getPersonsData(completion: @escaping PersonCompletionBlock)
}

final class PersonNetworkManager: NetworkManagerProtocol {
    func getPersonsData(completion: @escaping PersonCompletionBlock) {
        // получаем путь
        if let path = Bundle.main.url(forResource: "UserLocation", withExtension: "json") {
            do {
                let data = try Data(contentsOf: path)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode([PersonData].self, from: data)
                completion(jsonData, nil)
            } catch let error {
                completion(nil, error)
            }
        }
    }
}
