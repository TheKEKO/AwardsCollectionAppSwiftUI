//
//  ContentView.swift
//  AwardsCollectionAppSwiftUI
//
//  Created by Aleksandr F. on 03.06.2022.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        TabView {
            AwardsView()
                .tabItem {
                    Image(systemName: "pencil.and.outline")
                    Text("Awards")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
