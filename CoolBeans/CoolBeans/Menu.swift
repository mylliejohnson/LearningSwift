//
//  Menu.swift
//  CoolBeans
//
//  Created by Myllie Johnson on 3/4/22.
//

import Foundation

class Menu: ObservableObject, Codable {
    let sections: [MenuSection]
    var milkOptions = [ConfigurationOptions.none]
    var syrupOptions = [ConfigurationOptions.none]
    
    init(){
        do {
            let url = Bundle.main.url(forResource: "menu", withExtension: "json")!
            let data = try Data(contentsOf: url)
            let menuData = try JSONDecoder().decode(Menu.self, from: data)
            
            sections = menuData.sections
            milkOptions.append(contentsOf: menuData.milkOptions)
            syrupOptions.append(contentsOf: menuData.syrupOptions)
        } catch {
            fatalError("menu.json is missing or corrupt.")
        }
    }
}
