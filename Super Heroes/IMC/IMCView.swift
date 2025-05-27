//
//  IMCView.swift
//  Super Heroes
//
//  Created by Sergio Altuzar on 26/05/25.
//

import SwiftUI

struct IMCView: View {
    
//    init(){
//        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
//    }
    @State var gender: Int = 0
    @State var height: Double = 160
    @State var age: Int = 18
    @State var weight: Int = 80
    
    var body: some View {
        VStack {
            HStack {
                ToggleButtonView(text: "Hombre", imageName: "heart.fill", gender: 0, selectedGender: $gender)
                ToggleButtonView(text: "Mujer", imageName: "star.fill", gender: 1, selectedGender: $gender)
            }
            HeightCalculatorView(selectedHeight: $height)
            
            HStack {
                CounterButtonView(title: "Edad", number: $age)
                CounterButtonView(title: "Peso", number: $weight)
            }
            CalculateButtonView(userWeight: Double(weight), userHeigth: height)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundApp)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("IMC Calculator")
                    .foregroundColor(.white)
            }
        }
    }
    
}

#Preview {
    IMCView()
}
