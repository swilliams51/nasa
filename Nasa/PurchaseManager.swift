//
//  PurchaseManager.swift
//  Nasa
//
//  Created by Steven Williams on 8/8/22.
//

import Foundation
import Glassfy

class PurchaseManager {
    static let shared = PurchaseManager()
    
    private init() {}
    
    func configure() {
        Glassfy.initialize(apiKey: "09f92e0d3dbc4128b3a3508eab0630a1")
    }
    
    func getProducts() async -> Glassfy.Sku? {
        do {
            return try await Glassfy.sku(id: "Full")
        } catch {
            print(error.localizedDescription)
            return nil
        }
    }
    
    func hasPurchased() async -> Bool {
        do {
            let permissions = try await Glassfy.permissions()
            if permissions["Full"]?.isValid == true {
                return true
            } else {
                return false
            }
        } catch {
            print(error.localizedDescription)
            return false
        }
    }
    
}
