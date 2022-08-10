//
//  Level.swift
//  Nasa
//
//  Created by Steven Williams on 7/21/22.
//

import Foundation

enum Level: String {
    
    // 09f92e0d3dbc4128b3a3508eab0630a1
    case basic, full
    
    static let allCases: [Level] = [.basic, .full]
    
    func toString() -> String {
        if self == .basic {
            return "Basic"
        } else {
            return "Full"
        }
    }
}
