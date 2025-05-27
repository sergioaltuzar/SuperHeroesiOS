//
//  CalculateButtonView.swift
//  Super Heroes
//
//  Created by Sergio Altuzar on 27/05/25.
//

import SwiftUI

struct CalculateButtonView: View {
    let userWeight: Double
    let userHeigth: Double
    
    var body: some View {
        NavigationStack {
            NavigationLink(destination: { IMCResultView(userWeight: userWeight, userHeigth: userHeigth) }) {
                Text("Calcular")
                    .font(.title)
                    .bold()
                    .foregroundColor(.purple)
                    .frame(maxWidth: .infinity, maxHeight: 100)
                    .background(.backgroundComponent)
            }
        }
    }
}

#Preview {
    CalculateButtonView(userWeight: 92, userHeigth: 185)
}
