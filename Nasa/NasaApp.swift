//
//  NasaApp.swift
//  Nasa
//
//  Created by Steven Williams on 7/17/22.
//

import SwiftUI

@main
struct NasaApp: App {
    
    @State var showLaunchView: Bool = true
    @State var level: Level = .basic
    
    var body: some Scene {
        WindowGroup {
            
            ZStack {
                HomeView(level: $level)
                    .onAppear {
                        PurchaseManager.shared.configure()
                    }
                if showLaunchView == true {
                    LaunchView(showLaunchView: $showLaunchView)
                        .transition(.move(edge: .leading))
                }
            }
            .zIndex(2.0)
        }
    }
}
