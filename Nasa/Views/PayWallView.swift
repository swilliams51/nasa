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
                Section ("Subscription evel") {
                    HStack {
                        Text("Access Level:")
                        Spacer()
                        Text("\(level.toString())")
                    }
                }
                
                Section ("Subscription") {
                    HStack {
                        Text("Frequency:")
                        Spacer()
                        Text("Monthly")
                    }
                    HStack {
                        Text("Type:")
                        Spacer()
                        Text("Auto-Renewable")
                    }
                    HStack {
                        Text("Price:")
                        Spacer()
                        Text("$1.99")
                    }
                    
                    HStack {
                        Spacer()
                        Button ("Purchase Now") {
                            
                        }
                    }
                }
               
            }
            .navigationTitle("Subscription Type")
            .navigationBarTitleDisplayMode(.inline)
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
