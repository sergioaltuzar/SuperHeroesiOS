//
//  InformationView.swift
//  Super Heroes
//
//  Created by Sergio Altuzar on 27/05/25.
//

import SwiftUI

struct InformationView: View {
    let result: Double
    
    var body: some View {
        let information = getIMCResult (result: result)
        
        VStack {
            Spacer()
            Text(information.0)
                .foregroundColor(information.2)
                .font(.title)
                .bold()
            Spacer()
            Text("\(result, specifier: "%.2f")")
                .font(.system(size: 80))
                .bold()
                .foregroundColor(.white)
            Spacer()
            Text(information.1)
                .foregroundColor(.white)
                .font(.title2)
                .padding(.horizontal, 8)
            Spacer()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.backgroundComponent)
            .cornerRadius(16)
    }
}

#Preview {
    InformationView(result: 90)
}
