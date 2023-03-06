//
//  ApiManager.swift
//  DemoBank
//
//  Created by Asadullah Behlim on 22/02/23.
//

import Foundation

class ViewModel {
    
    var allData: [DataModel] = []
    
    func parseJson()
    {
        // Parse the JSON file and store the data in the AccessDataArray
        guard let url = Bundle.main.url(forResource: "Data", withExtension: "json") else {
            debugPrint("File not found!")
            return
        }
        do {
            let jsonData = try Data(contentsOf: url)
            allData = try JSONDecoder().decode([DataModel].self, from: jsonData)
            debugPrint(allData)
        }
        catch
        {
            debugPrint(error.localizedDescription)
        }
    }
}
