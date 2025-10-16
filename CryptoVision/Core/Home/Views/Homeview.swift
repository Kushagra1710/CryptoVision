//
//  Homeview.swift
//  CryptoVision
//
//  Created by Kushagra Sharma on 20/09/24.
//

import SwiftUI
import Combine

struct HomeView: View {
    
    @EnvironmentObject private var vm: HomeViewModel
    @State private var showPortfolio: Bool = false // animate right
    @State private var showPortfolioView: Bool = false // new sheet
    @State private var showSettingsView: Bool = false // new sheet
    @State private var selectedCoin: CoinModel? = nil
    @State private var showDetailView: Bool = false
    
    var body: some View {
        ZStack {
            // background layer
            Color.theme.background
                .ignoresSafeArea()
                .sheet(isPresented: $showPortfolioView, content: {
                    PortfolioView()
                        .environmentObject(vm)
                })
            
            // content layer
            VStack {
                homeHeader
                HomeStatsView(showPortfolio: $showPortfolio)
                SearchBarView(searchText: $vm.searchText)
                columnTitles
                
                if !showPortfolio {
                    allCoinsList
                        .transition(.move(edge: .leading))
                }
                
                if showPortfolio {
                    ZStack(alignment: .top) {
                        if vm.portfolioCoins.isEmpty && vm.searchText.isEmpty {
                            portfolioEmptyText
                        } else {
                            portfolioCoinsList
                        }
                    }
                    .transition(.move(edge: .trailing))
                }
                
                Spacer(minLength: 0)
            }
            .sheet(isPresented: $showPortfolioView, content: {
                        PortfolioView()
                            .environmentObject(vm)
                    })
            .sheet(isPresented: $showSettingsView, content: {
                SettingsView()
            })
        }
        // ✅ FIX 1: The old NavigationLink is removed from the .background modifier.
        // Instead, we use .navigationDestination below.
        .navigationDestination(isPresented: $showDetailView) {
            DetailLoadingView(coin: $selectedCoin)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        // ✅ FIX 1: Use NavigationStack instead of NavigationView
        NavigationStack {
            HomeView()
                .navigationBarHidden(true)
        }
        .environmentObject(dev.homeVM)
    }
}

extension HomeView {
    
    private var homeHeader: some View {
        HStack {
            CircleButtonView(iconName: showPortfolio ? "plus" : "info")
                // ✅ FIX 2: Updated animation syntax
                .animation(nil, value: showPortfolio)
                .onTapGesture {
                    if showPortfolio {
                        showPortfolioView.toggle()
                    } else {
                        showSettingsView.toggle()
                    }
                }
                .background(
                    CircleButtonAnimationView(animate: $showPortfolio)
                )
            Spacer()
            Text(showPortfolio ? "Portfolio" : "Live Prices")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundColor(Color.theme.accent)
                // ✅ FIX 2: Updated animation syntax
                .animation(nil, value: showPortfolio)
            Spacer()
            CircleButtonView(iconName: "chevron.right")
                .rotationEffect(Angle(degrees: showPortfolio ? 180 : 0))
                .onTapGesture {
                    withAnimation(.spring()) {
                        showPortfolio.toggle()
                    }
                }
        }
        .padding(.horizontal)
    }
        
    private var allCoinsList: some View {
        List {
            ForEach(vm.allCoins) { coin in
                CoinRowView(coin: coin, showHoldingsColumn: false)
                    .listRowInsets(.init(top: 10, leading: 0, bottom: 10, trailing: 10))
                    .onTapGesture {
                        segue(coin: coin)
                    }
                    .listRowBackground(Color.theme.background)
            }
        }
        .listStyle(PlainListStyle())
    }
    
    private var portfolioCoinsList: some View {
        List {
            ForEach(vm.portfolioCoins) { coin in
                CoinRowView(coin: coin, showHoldingsColumn: true)
                    .listRowInsets(.init(top: 10, leading: 0, bottom: 10, trailing: 10))
                    .onTapGesture {
                        segue(coin: coin)
                    }
                    .listRowBackground(Color.theme.background)
            }
        }
        .listStyle(PlainListStyle())
    }
    
    private var portfolioEmptyText: some View {
        Text("You haven't added any coins to your portfolio yet. Click the + button to get started! 🧐")
            .font(.callout)
            .foregroundColor(Color.theme.accent)
            .fontWeight(.medium)
            .multilineTextAlignment(.center)
            .padding(50)
    }
    
    private func segue(coin: CoinModel) {
        selectedCoin = coin
        showDetailView.toggle()
    }

    private var columnTitles: some View {
        // ✅ FIX 3: Wrap the HStack in a GeometryReader to get the container's width
        GeometryReader { geometry in
            HStack {
                HStack(spacing: 4) {
                    Text("Coin")
                    Image(systemName: "chevron.down")
                        .opacity((vm.sortOption == .rank || vm.sortOption == .rankReversed) ? 1.0 : 0.0)
                        .rotationEffect(Angle(degrees: vm.sortOption == .rank ? 0 : 180))
                }
                .onTapGesture {
                    withAnimation(.default) {
                        vm.sortOption = vm.sortOption == .rank ? .rankReversed : .rank
                    }
                }
                
                Spacer()
                if showPortfolio {
                    HStack(spacing: 4) {
                        Text("Holdings")
                        Image(systemName: "chevron.down")
                            .opacity((vm.sortOption == .holdings || vm.sortOption == .holdingsReversed) ? 1.0 : 0.0)
                            .rotationEffect(Angle(degrees: vm.sortOption == .holdings ? 0 : 180))
                    }
                    .onTapGesture {
                        withAnimation(.default) {
                            vm.sortOption = vm.sortOption == .holdings ? .holdingsReversed : .holdings
                        }
                    }
                }
                HStack(spacing: 4) {
                    Text("Price")
                    Image(systemName: "chevron.down")
                        .opacity((vm.sortOption == .price || vm.sortOption == .priceReversed) ? 1.0 : 0.0)
                        .rotationEffect(Angle(degrees: vm.sortOption == .price ? 0 : 180))
                }
                // ✅ FIX 3: Use the width from the geometry proxy
                .frame(width: geometry.size.width / 3.5, alignment: .trailing)
                .onTapGesture {
                    withAnimation(.default) {
                        vm.sortOption = vm.sortOption == .price ? .priceReversed : .price
                    }
                }
                
                Button(action: {
                    withAnimation(.linear(duration: 2.0)) {
                        vm.reloadData()
                    }
                }, label: {
                    Image(systemName: "goforward")
                })
                .rotationEffect(Angle(degrees: vm.isLoading ? 360 : 0), anchor: .center)
            }
            .font(.caption)
            .foregroundColor(Color.theme.secondaryText)
            .padding(.horizontal)
        }
        // ✅ FIX 3: Give the GeometryReader a fixed height so it doesn't expand
        .frame(height: 25)
    }
    
}
