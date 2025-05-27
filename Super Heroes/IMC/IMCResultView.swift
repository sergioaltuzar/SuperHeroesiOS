//
//  IMCReseultView.swift
//  Super Heroes
//
//  Created by Sergio Altuzar on 27/05/25.
//

import SwiftUI

struct IMCResultView: View {
    let userWeight: Double
    let userHeigth: Double
    
    var body: some View {
        VStack {
            Text("Tu resultado")
                .font(.title)
                .bold()
                .foregroundColor(.white)
            let result = calculateIMC(weight: userWeight, heigth: userHeigth)
            InformationView(result: result)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundApp)
    }
}

func calculateIMC(weight: Double, heigth: Double) -> Double {
    let result = weight/((heigth/100) * (heigth/100))
    return result
}

func getIMCResult(result: Double) -> (String, String, Color) {
    let title: String
    let description: String
    let color: Color
    
    switch result {
    case 0.00...19.99:
        title = "Peso bajo"
        description = "Estas por debajo del peso recomendado segun el IMC"
        color = .yellow
    case 20.00...24.99:
        title = "Peso normal"
        description = "Estas en el peso normal recomendado segun el IMC"
        color = .green
    case 25.00...29.99:
        title = "Sobre peso"
        description = "Estas por encima del peso recomendado segun el IMC"
        color = .orange
    case 30.00...100:
        title = "Obesidad"
        description = "Estas muy por encima del peso recomendado segun el IMC"
        color = .red
    default:
        title = "ERROR"
        description = "Ha ocurrido un error"
        color = .red
    }
    return (title, description, color)
}

#Preview {
    IMCResultView(userWeight: 80, userHeigth: 190)
}
