//
//  CircleButtonView.swift
//  CryptoVision
//
//  Created by Kushagra Sharma on 20/08/24.
//

import SwiftUI

struct CircleButtonView: View {
    let iconName : String
    var body: some View {
        Image(systemName: iconName)
            .font(.headline)
            .foregroundStyle(Color.theme.accent)
            .frame(width: 50, height: 50)
            .background(
                 Circle()
                .foregroundStyle(Color.theme.background)
            )
            .shadow(color: Color.theme.accent, radius: 10, x: 0, y: 0)
            .padding()
    }
}

    

#Preview(traits: .sizeThatFitsLayout) {
        CircleButtonView(iconName: "info")
}
#Preview(traits: .sizeThatFitsLayout) {
        CircleButtonView(iconName: "plus")
        .colorScheme(.dark)
}
