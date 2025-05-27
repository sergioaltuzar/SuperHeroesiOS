//
//  ToggleButtonView.swift
//  Super Heroes
//
//  Created by Sergio Altuzar on 26/05/25.
//

import SwiftUI

struct ToggleButtonView: View {
    let text: String
    let imageName: String
    let gender: Int
    @Binding var selectedGender: Int
    
    var body: some View {
        let color = if (gender == selectedGender){
            Color.bckgroundComponentSelected
        } else {
            Color.backgroundComponent
        }
        Button(action: {
            selectedGender = gender
        }) {
            VStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .foregroundColor(.white)
                InformationTextView(text: text)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(color)
        }
    }
}

#Preview {
    @Previewable @State var gender = 0
    ToggleButtonView(text: "Hombre", imageName: "heart.fill", gender: 0, selectedGender: $gender)
}
