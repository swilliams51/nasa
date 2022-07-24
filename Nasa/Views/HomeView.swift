//
//  HomeView.swift
//  Nasa
//
//  Created by Steven Williams on 7/23/22.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var nasaMissions = Missions()
    
    @Binding var level: Level
    
    var body: some View {
        NavigationView {
            Form {
                NavigationLink(destination: ContentView(nasaMissions: nasaMissions, level: $level)) {
                    Text("Nasa Missions")
                }
                
                NavigationLink(destination: PayWallView(level: $level)){
                    Text("Subscription Details")
                }
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
        }
       
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(level: .constant(.basic))
    }
}
