//
//  ContentView.swift
//  Nasa
//
//  Created by Steven Williams on 7/17/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var nasaMissions = Missions()
    var myMissions: [String] = Missions().getNames()
     
    @State var selectedMission: String = "Apollo"
    
    var body: some View {
        NavigationView {
            Form {
                Picker(selection: $selectedMission, label: Text("mission name:").font(.subheadline)) {
                    ForEach(myMissions, id: \.self) { name in
                           Text(name)
                    }
                }
                
                HStack {
                    Spacer()
                    nasaMissions.getMissionLogo(aName: selectedMission)
                        .resizable()
                        .frame(width: 120, height: 120, alignment: .center)
                        .scaledToFit()
                    Spacer()
                }
                
                ScrollView (.vertical, showsIndicators: false) {
                    Text(nasaMissions.getMissionDetails(aName: selectedMission))
                        .font(.footnote)
                        //.foregroundColor(self.isDark ? .white : .black)
                        .textSelection(.enabled)
                }
            }
            .navigationTitle("Nasa Missions")
        }
     
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
