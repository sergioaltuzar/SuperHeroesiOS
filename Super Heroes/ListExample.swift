//
//  ListExample.swift
//  Super Heroes
//
//  Created by Sergio Altuzar on 17/05/25.
//

import SwiftUI

var pokemons = [
    Pokemon (name: "Pikachu"),
    Pokemon (name: "Charizard"),
    Pokemon (name: "Squirtle"),
    Pokemon (name: "Bulbasaur"),
    Pokemon (name: "Jigglypuff"),
    Pokemon (name: "Pidgey"),
    Pokemon (name: "Rattata"),
    Pokemon (name: "Rattata"),
    Pokemon (name: "Caterpie")
]

var digimons = [
    Digimon(name: "Acumon"),
    Digimon(name: "Mostromon"),
    Digimon(name: "Charimon"),
    Digimon(name: "Ansinamon"),
    Digimon(name: "Sergiomon"),
    Digimon(name: "Sergiomon")
]

struct ListExample: View {
    var body: some View {
        List {
            Section(header: Text("Pokemons")){
                ForEach(pokemons, id: \.name) { pokemon in
                    Text(pokemon.name)
                }
            }
            Section(header: Text("Digimons")) {
                ForEach(digimons) { digimon in
                    Text(digimon.name)
                }
            }
        }.listStyle(.automatic)
    }
}


struct Pokemon {
    let name: String
}

struct Digimon: Identifiable {
    var id = UUID()
    let name: String
}

#Preview {
    ListExample()
}
