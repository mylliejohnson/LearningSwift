//
//  MenuSection.swift
//  CoolBeans
//
//  Created by Myllie Johnson on 3/4/22.
//

import Foundation

struct MenuSection: Identifiable, Codable {
    let id: UUID
    let name: String
    let drinks: [Drink]
}
