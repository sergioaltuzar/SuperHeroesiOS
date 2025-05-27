//
//  CounterButtonView.swift
//  Super Heroes
//
//  Created by Sergio Altuzar on 26/05/25.
//

import SwiftUI

struct CounterButtonView: View {
    let title: String
    @Binding var number: Int
    
    var body: some View {
        VStack {
            TitleTextView(text: title)
            InformationTextView(text: String(number))
            HStack {
                Button(action: {
                    if(number > 0) {
                        number -= 1
                    }
                    
                }) {
                    ZStack {
                        Circle()
                            .frame(width: 70, height: 70)
                            .foregroundColor(.purple)
                        Image(systemName: "minus")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.white)
                            .frame(width: 25    , height: 25)
                    }
                }
                Button(action: {
                    if(number < 180) {
                        number += 1
                    }
                }) {
                    ZStack {
                        Circle()
                            .frame(width: 70, height: 70)
                            .foregroundColor(.purple)
                        Image(systemName: "plus")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 25, height: 25)
                    }
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundComponent)
    }
}

#Preview {
    @Previewable @State var number = 12
    CounterButtonView(title: "Edad", number: $number)
}
