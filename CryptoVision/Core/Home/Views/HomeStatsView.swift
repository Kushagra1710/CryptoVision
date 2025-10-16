//
//  HomeStatsView.swift
//  CryptoVision
//
//  Created by Kushagra Sharma on 5/10/24.
//

import SwiftUI
import Combine

struct HomeStatsView: View {
    
    @EnvironmentObject private var vm: HomeViewModel
    @Binding var showPortfolio: Bool
    
    var body: some View {
        // Wrap the HStack in a GeometryReader to get the container's width
        GeometryReader { geometry in
            HStack {
                ForEach(vm.statistics) { stat in
                    StatisticView(stat: stat)
                        // Use the width from the geometry proxy
                        .frame(width: geometry.size.width / 3)
                }
            }
            // Also use the geometry proxy's width for the HStack's frame
            .frame(width: geometry.size.width,
                   alignment: showPortfolio ? .trailing : .leading
            )
        }
        .frame(height: 55)
    }
}

struct HomeStatsView_Previews: PreviewProvider {
    static var previews: some View {
        HomeStatsView(showPortfolio: .constant(false))
            .environmentObject(dev.homeVM)
    }
}
