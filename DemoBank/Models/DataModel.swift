//
//  QuickAccessDataModel.swift
//  DemoBank
//
//  Created by Asadullah Behlim on 21/02/23.
//

//import Foundation
import UIKit

struct DataModel: Codable {
    let id: Int
    let title: String
    let data: IconModel
}

struct IconModel: Codable {
    let label: [String]
    let iconName: [String]
}




//struct QuickAccess: Codable {
//    let id: String
//    let label: String
//    let imageName: String
//}


//if let path = Bundle.main.path(forResource: "data", ofType: "json") {
//    do {
//        let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
//        if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [[String:Any]] {
//            for dict in json {
//                if let id = dict["id"] as? String, let dataDict = dict["data"] as? [String: Any], let labels = dataDict["label"] as? [String], let imageNames = dataDict["imageName"] as? [String] {
//                    // Use the extracted data as required
//                    print("id: \(id)")
//                    print("labels: \(labels)")
//                    print("image names: \(imageNames)")
//                }
//            }
//        }
//    } catch {
//        print(error)
//    }
//}














//
//struct QuickAccessItem {
//    let title: String
//    let icon: String?
//}
//
//class QuickAccessViewModel {
//    let items: [QuickAccessItem]
//
//    init() {
//        items = [
//            QuickAccessItem(title: "Pay your Contact", icon: "iphone.homebutton"),
//            QuickAccessItem(title: "Loan and Card offers", icon: "banknote"),
//            QuickAccessItem(title: "Account overview", icon: "indianrupeesign.circle"),
//            QuickAccessItem(title: "Scan any \n QR", icon: "qrcode.viewfinder")
//        ]
//    }
//}

//  ------------ Dictionary Approach --------------------
//{
//    "imageName" : "iphone.homebutton",
//    "label": "Pay your Contact"
//},
//{
//    "imageName" : "banknote",
//    "label": "Loan and Card offers"
//},
//{
//    "imageName" : "iphone.homebutton",
//    "label": "Pay your Contact"
//},
//{
//    "imageName" : "iphone.homebutton",
//    "label": "Pay your Contact"
//},
//]
