//
//  ApiManager.swift
//  DemoBank
//
//  Created by Asadullah Behlim on 22/02/23.
//

import Foundation

class ApiManager {
    
    func parseJson() -> [DataModel]
    {
        var AccessDataArray: [DataModel] = []
        // Parse the JSON file and store the data in the AccessDataArray
        guard let url = Bundle.main.url(forResource: "Data", withExtension: "json") else {
            debugPrint("File not found!")
            return AccessDataArray
        }
        do {
            let jsonData = try Data(contentsOf: url)
            AccessDataArray = try JSONDecoder().decode([DataModel].self, from: jsonData)
            debugPrint(AccessDataArray)
        }
        catch
        {
            debugPrint(error.localizedDescription)
        }
        return AccessDataArray
    }
}
