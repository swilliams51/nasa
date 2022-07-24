//
//  PayWallView.swift
//  Nasa
//
//  Created by Steven Williams on 7/23/22.
//

import SwiftUI

struct PayWallView: View {
    @Binding var level: Level
    
    var body: some View {
        NavigationView {
            Form{
                Picker(selection: $level, label: Text("")) {
                    ForEach(Level.allCases, id: \.self) { aLevel in
                        Text(aLevel.toString())
                    }
                }
            }
            .navigationTitle("Subscription Type")
        }
        .onDisappear{
            print(level.toString())
        }
    }
}

struct PayWallView_Previews: PreviewProvider {
    static var previews: some View {
        PayWallView(level: .constant(.basic))
    }
}
