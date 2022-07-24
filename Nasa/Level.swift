//
//  Level.swift
//  Nasa
//
//  Created by Steven Williams on 7/21/22.
//

import Foundation

enum Level: String {
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
