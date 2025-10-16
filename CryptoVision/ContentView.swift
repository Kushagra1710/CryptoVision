//
//  ContentView.swift
//  CryptoVision
//
//  Created by Kushagra Sharma on 05/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            VStack(spacing:40){
                 Text("Accent Color")
                    .foregroundStyle(Color.theme.accent)
                
                Text("Secondary Text Color")
                    .foregroundStyle(Color.theme.secondaryText)
                
                Text("Red Color")
                    .foregroundStyle(Color.theme.red)
                
                Text("Greren Color")
                    .foregroundStyle(Color.theme.green)
            }
            .font(.headline)
            
        }
    }
}

#Preview {
    ContentView()
}
