//
//  MarkerDataModel.swift
//  Crypto
//
//  Created by Nizami Tagiyev on 20.05.2022.
//

import Foundation

// JSON DATA
/*
 
URL: https://api.coingecko.com/api/v3/global

JSON Response:
 
 {
   "data": {
     "active_cryptocurrencies": 13427,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 808,
     "total_market_cap": {
       "btc": 44466470.9072602,
       "eth": 661976476.0780925,
       "ltc": 19221228450.425137,
       "bch": 6879201782.907756,
       "bnb": 4350805103.180955,
       "eos": 1020262174678.1539,
       "xrp": 3119694838966.6914,
       "xlm": 10156323338399.62,
       "link": 190051447512.6378,
       "dot": 136153306300.69806,
       "yfi": 140022232.18929094,
       "usd": 1343048949447.5105,
       "aed": 4933065798033.961,
       "ars": 158947664741716.97,
       "aud": 1900168485510.48,
       "bdt": 117650981870735.17,
       "bhd": 506314680403.2702,
       "bmd": 1343048949447.5105,
       "brl": 6623245894200.397,
       "cad": 1716505198624.5854,
       "chf": 1305529533995.7449,
       "clp": 1124870647609762.4,
       "cny": 8963911603297.518,
       "czk": 31317860066712.805,
       "dkk": 9448215054468.299,
       "eur": 1269506275073.6633,
       "gbp": 1075645217514.6127,
       "hkd": 10540805520578.104,
       "huf": 488243815768310.8,
       "idr": 19678823274437276,
       "ils": 4499757915473.71,
       "inr": 104156201966098.66,
       "jpy": 172264158927460.88,
       "krw": 1702947210807241.8,
       "kwd": 411335601747.2897,
       "lkr": 483773518974595.2,
       "mmk": 2488046300295374,
       "mxn": 26768444259382.28,
       "myr": 5896656412549.306,
       "ngn": 557526479894653,
       "nok": 13033739404318.852,
       "nzd": 2095457204102.7942,
       "php": 70144091693367.69,
       "pkr": 269642333980131.44,
       "pln": 5888379201873.88,
       "rub": 77796109053698.31,
       "sar": 5038053277461.207,
       "sek": 13317686813211.01,
       "sgd": 1849986804563.325,
       "thb": 46047104756282.74,
       "try": 21464533099328.992,
       "twd": 39816700679795.67,
       "uah": 39702152034897.3,
       "vef": 134479491308.17952,
       "vnd": 31117910601613576,
       "zar": 21313413231537.117,
       "xdr": 979842849852.6223,
       "xag": 61013518459.835686,
       "xau": 728039974.5165058,
       "bits": 44466470907260.2,
       "sats": 4446647090726020
     },
     "total_volume": {
       "btc": 3068582.4326602714,
       "eth": 45682271.24576969,
       "ltc": 1326435913.480469,
       "bch": 474726177.0735521,
       "bnb": 300244292.72550845,
       "eos": 70407174710.46208,
       "xrp": 215286722395.39206,
       "xlm": 700876744674.2009,
       "link": 13115242141.77556,
       "dot": 9395790476.25117,
       "yfi": 9662780.812402677,
       "usd": 92682336339.95387,
       "aed": 340425465258.42413,
       "ars": 10968804175084.004,
       "aud": 131128545053.48462,
       "bdt": 8118965341475.405,
       "bhd": 34940221294.46305,
       "bmd": 92682336339.95387,
       "brl": 457062941660.4825,
       "cad": 118454142876.65973,
       "chf": 90093162591.96092,
       "clp": 77626090801528.36,
       "cny": 618589717433.7539,
       "czk": 2161211206296.489,
       "dkk": 652010967917.9419,
       "eur": 87607236966.65063,
       "gbp": 74229097809.9964,
       "hkd": 727409438765.5404,
       "huf": 33693170727363.42,
       "idr": 1358014030870726.2,
       "ils": 310523363085.06476,
       "inr": 7187705367317.589,
       "jpy": 11887760847139.68,
       "krw": 117518520993706.8,
       "kwd": 28385819150.837715,
       "lkr": 33384680444008.516,
       "mmk": 171697348877875.72,
       "mxn": 1847261006507.5947,
       "myr": 406921797700.56824,
       "ngn": 38474291461441.82,
       "nok": 899444074421.3553,
       "nzd": 144605205533.66827,
       "php": 4840566906559.608,
       "pkr": 18607722004262.977,
       "pln": 406350596461.7064,
       "rub": 5368624239809.507,
       "sar": 347670536172.4536,
       "sek": 919038973970.346,
       "sgd": 127665562238.4787,
       "thb": 3177660242583.497,
       "try": 1481243909174.3108,
       "twd": 2747706884302.4463,
       "uah": 2739802007836.011,
       "vef": 9280282337.7196,
       "vnd": 2147412912806930,
       "zar": 1470815292689.3364,
       "xdr": 67617881394.19477,
       "xag": 4210476052.6447816,
       "xau": 50241240.88316215,
       "bits": 3068582432660.2715,
       "sats": 306858243266027.1
     },
     "market_cap_percentage": {
       "btc": 42.82925002013261,
       "eth": 18.2558558017852,
       "usdt": 5.527657315735285,
       "usdc": 3.9387561800590163,
       "bnb": 3.858828978510181,
       "xrp": 1.5485748850129966,
       "busd": 1.3825934781878042,
       "ada": 1.3370526423407323,
       "sol": 1.3257417685050616,
       "doge": 0.8516130114720074
     },
     "market_cap_change_percentage_24h_usd": 3.462574213212349,
     "updated_at": 1653038242
   }
 }
 
 */

struct GlobalData: Codable {
    let data: MarkerDataModel?
}

struct MarkerDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }
    
}
