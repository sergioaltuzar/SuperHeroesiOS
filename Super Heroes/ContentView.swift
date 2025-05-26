//
//  ContentView.swift
//  Super Heroes
//
//  Created by Sergio Altuzar on 17/05/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       NavigationStack {
           List{
               NavigationLink(destination: ListExample()) {
                   Text("List Example")
               }
               NavigationLink(destination: SuperHeroSearcher()) {
                   Text("Super Hero Searcher")
               }
           }
        }
    }
}

#Preview {
    ContentView()
}
