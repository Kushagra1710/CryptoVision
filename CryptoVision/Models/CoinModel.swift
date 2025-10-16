//
//  CoinModel.swift
//  CryptoVision
//
//  Created by Kushagra Sharma on 20/09/24.
//

// CoinGecko API
/*
 url -> https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&names=Bitcoin&symbols=btc&price_change_percentage=24h&order=market_cap_desc&per_page=250&page=1&sparkline=true
 
 
    JSON response->
 
 {
     "id": "bitcoin",
     "symbol": "btc",
     "name": "Bitcoin",
     "image": "https://coin-images.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
     "current_price": 113140,
     "market_cap": 2252722253068,
     "market_cap_rank": 1,
     "fully_diluted_valuation": 2252722253068,
     "total_volume": 50123139070,
     "high_24h": 113384,
     "low_24h": 111644,
     "price_change_24h": -151.5452551014896,
     "price_change_percentage_24h": -0.13377,
     "market_cap_change_24h": -3152747671.9936523,
     "market_cap_change_percentage_24h": -0.13976,
     "circulating_supply": 19925078,
     "total_supply": 19925078,
     "max_supply": 21000000,
     "ath": 124128,
     "ath_change_percentage": -8.97673,
     "ath_date": "2025-08-14T00:37:02.582Z",
     "atl": 67.81,
     "atl_change_percentage": 166523.01307,
     "atl_date": "2013-07-06T00:00:00.000Z",
     "roi": null,
     "last_updated": "2025-09-23T14:10:32.145Z",
     "sparkline_in_7d": {
       "price": [
         115345.7791919205,
         115432.89206598123,
         115019.09578002297,
         115260.95453487385,
         115918.68063027997,
         116158.42752272532,
         116536.31650559162,
         116454.5775062696,
         116804.43867134045,
         116882.78170087388,
         116776.27134667119,
         116872.96755173472,
         116797.00205991932,
         116629.3763135545,
         116688.52098718812,
         116732.50964139415,
         116423.14743464273,
         116319.91427503152,
         117162.75477621086,
         117256.58549060355,
         117225.48665434263,
         116877.6478033946,
         116606.4783652071,
         116382.44528065142,
         116279.78693685924,
         116198.55483548675,
         116193.74724346046,
         115634.27808614414,
         115894.70808566172,
         115717.01610782724,
         116031.58519047528,
         115194.3078037463,
         115721.45993062394,
         115649.82358310322,
         116214.03190192967,
         116863.39240749434,
         116455.94648225319,
         116381.22893627378,
         116761.69147901927,
         116969.14904686039,
         117742.98005985272,
         117494.17334517208,
         117217.1473590896,
         117081.79397034168,
         117100.80353259912,
         117246.48259706644,
         117330.37185111486,
         117233.96564668287,
         117085.66810721309,
         117189.92910452069,
         117553.27644964374,
         117735.87157682037,
         117676.42476236634,
         117644.58180662621,
         117607.20998415927,
         117851.18539205311,
         117479.65470626247,
         117575.95305738947,
         117412.08260355875,
         116948.58586157573,
         117169.11793707692,
         117447.66044572467,
         117246.22326321788,
         117162.55935837168,
         117001.29549547189,
         117050.60169942482,
         116946.2084937178,
         116802.45187760674,
         116957.2847663997,
         116960.44627596506,
         116544.94863856838,
         116542.94541523207,
         116402.8979614958,
         116207.71982668396,
         116310.94427105524,
         115976.84364829991,
         115870.78418814257,
         116110.71295886741,
         115618.46059190473,
         115485.9886898518,
         115157.37841901269,
         115436.27066281217,
         115533.46699826297,
         115650.54025838921,
         115656.94582205842,
         115757.64492701381,
         115630.52604677362,
         115627.52206692945,
         115489.18449916203,
         115610.90584090051,
         115751.71706797219,
         115754.27171996003,
         115984.62721431848,
         115804.7284527069,
         115720.80222969536,
         115784.63989667728,
         115934.99104542725,
         115892.24112764648,
         115947.9834398576,
         116073.06945623364,
         116010.74374658203,
         116083.2407924125,
         115874.83956471676,
         115751.86951846803,
         115743.81493180516,
         115760.45764529692,
         115851.04761614517,
         115818.25379015566,
         115722.89635080755,
         115716.53763560657,
         115543.31187493537,
         115718.78065124822,
         115702.14940465351,
         115538.73145938573,
         115723.02069173029,
         115743.97233519975,
         115849.67417839603,
         115679.9613005898,
         115672.03308242503,
         115562.29113142668,
         115675.79409212345,
         115719.0416731149,
         115701.1935700915,
         115543.42615516653,
         115577.97411519449,
         115382.61583928157,
         115641.62000950893,
         115561.91439782949,
         115529.5348055079,
         115369.30506735465,
         115496.4027503412,
         115584.69105357188,
         115255.84820116173,
         114429.54127386621,
         114334.5068326891,
         114268.990546202,
         114693.64173814096,
         114423.81363544632,
         113596.45358888479,
         112815.02861288023,
         112593.11021618362,
         112702.3985905766,
         112420.02276001745,
         112861.02656274178,
         112879.16460537122,
         112764.57195222315,
         112921.63271984232,
         113030.16943960388,
         112884.4725814408,
         112683.95356400768,
         112427.42005859553,
         112495.67622151937,
         112176.15576810564,
         112694.31154745216,
         112958.87401918201,
         112696.45087669161,
         112692.49699542265,
         112462.90478199099,
         112289.94710588173,
         111933.14484123376,
         112382.88583906197,
         112546.31919022283,
         112744.13187768195,
         113055.05770519462,
         113095.48038269361,
         113153.92698775811,
         112986.38443176316,
         112987.67386940816
       ]
     },
     "price_change_percentage_24h_in_currency": -0.1337659676178027
   }
 
 */
import Foundation



struct CoinModel: Identifiable, Codable,Equatable {
    let id, symbol, name: String
    let image: String
    let currentPrice: Double
    let marketCap, marketCapRank, fullyDilutedValuation: Double?
    let totalVolume, high24H, low24H: Double?
    let priceChange24H, priceChangePercentage24H, marketCapChange24H, marketCapChangePercentage24H: Double?
    let circulatingSupply, totalSupply, maxSupply, ath: Double?
    let athChangePercentage: Double?
    let athDate: String?
    let atl, atlChangePercentage: Double?
    let atlDate: String?
    let lastUpdated: String?
    let sparklineIn7D: SparklineIn7D?
    let priceChangePercentage24HInCurrency: Double?
    let currentHoldings : Double?
    
    enum CodingKeys: String, CodingKey{
        case id, symbol, name, image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case fullyDilutedValuation = "fully_diluted_valuation"
        case totalVolume = "total_volume"
        case high24H = "high_24h"
        case low24H = "low_24h"
        case priceChange24H = "price_change_24h"
        case priceChangePercentage24H = "price_change_percentage_24h"
        case marketCapChange24H = "market_cap_change_24h"
        case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
        case circulatingSupply = "circulating_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case ath
        case athChangePercentage = "ath_change_percentage"
        case athDate = "ath_date"
        case atl
        case atlChangePercentage = "atl_change_percentage"
        case atlDate = "atl_date"
        case lastUpdated = "last_updated"
        case sparklineIn7D = "sparkline_in_7d"
        case priceChangePercentage24HInCurrency = "price_change_percentage_24h_in_currency"
        case currentHoldings
    }
    
    func updateHoldings(amount: Double) -> CoinModel{
        return CoinModel(id: id, symbol: symbol, name: name, image: image, currentPrice: currentPrice, marketCap: marketCap, marketCapRank: marketCapRank, fullyDilutedValuation: fullyDilutedValuation, totalVolume: totalVolume, high24H: high24H, low24H: low24H, priceChange24H: priceChange24H, priceChangePercentage24H: priceChangePercentage24H, marketCapChange24H: marketCapChange24H, marketCapChangePercentage24H: marketCapChangePercentage24H, circulatingSupply: circulatingSupply, totalSupply: totalSupply, maxSupply: maxSupply, ath: ath, athChangePercentage: athChangePercentage, athDate: athDate, atl: atl, atlChangePercentage: atlChangePercentage, atlDate: atlDate, lastUpdated: lastUpdated, sparklineIn7D: sparklineIn7D, priceChangePercentage24HInCurrency: priceChangePercentage24HInCurrency, currentHoldings: amount)
    }
    
    var currentHoldingsValue: Double {
        return (currentHoldings ?? 0) * currentPrice
    }
    
    var rank: Int{
        return Int(marketCapRank ?? 0)
    }
}

struct SparklineIn7D: Codable, Equatable {
    let price: [Double]?
}
