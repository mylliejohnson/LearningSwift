//
//  ConfigurationOptions.swift
//  CoolBeans
//
//  Created by Myllie Johnson on 3/4/22.
//

import Foundation

struct ConfigurationOptions: Identifiable, Codable, Hashable {
    let id: UUID
    let name: String
    let calories: Int
    
    static let none = ConfigurationOptions(id: UUID(), name: "None", calories: 0)
}
