//
//  MenuView.swift
//  Super Heroes
//
//  Created by Sergio Altuzar on 26/05/25.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationStack {
            List{
                NavigationLink(destination: IMCView()) {
                    Text("IMC Calculator")
                }
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
    MenuView()
}
