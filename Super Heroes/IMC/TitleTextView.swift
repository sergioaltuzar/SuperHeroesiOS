//
//  TitleTextView.swift
//  Super Heroes
//
//  Created by Sergio Altuzar on 26/05/25.
//

import SwiftUI

struct TitleTextView: View {
    let text: String
    var body: some View {
        Text(text)
            .font(.title2)
            .foregroundColor(.gray)
    }
}

#Preview {
    TitleTextView(text: "Hola")
}
