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
        var quickAccessDataArray: [DataModel] = []
        // Parse the JSON file and store the data in the quickAccessDataArray
        guard let url = Bundle.main.url(forResource: "Data", withExtension: "json") else {
            debugPrint("File not found!")
            return quickAccessDataArray
        }
        do {
            let jsonData = try Data(contentsOf: url)
            quickAccessDataArray = try JSONDecoder().decode([DataModel].self, from: jsonData)
            //debugPrint(result)
        }
        catch
        {
            debugPrint(error.localizedDescription)
        }
        return quickAccessDataArray
    }
}
