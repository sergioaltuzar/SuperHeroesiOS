//
//  InformationTextView.swift
//  Super Heroes
//
//  Created by Sergio Altuzar on 26/05/25.
//

import SwiftUI

struct InformationTextView: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .bold()
            .foregroundColor(.white)
    }
}

#Preview {
    InformationTextView(text: "Hola mundo")
}
