//
//  HeightCalculatorView.swift
//  Super Heroes
//
//  Created by Sergio Altuzar on 26/05/25.
//

import SwiftUI

struct HeightCalculatorView: View {
    @Binding var selectedHeight: Double
    
    
    var body: some View {
        VStack {
            TitleTextView(text: "Altura")
            InformationTextView(text: "\(Int (selectedHeight)) cm")
            Slider(value: $selectedHeight, in: 100...220, step: 1.0)
                .accentColor(.purple)
                .padding(.horizontal, 16)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundComponent)
    }
}

#Preview {
    @Previewable @State var selectedHeight: Double = 120
    HeightCalculatorView(selectedHeight: $selectedHeight)
}
