//
//  UserDefaultsExtension.swift
//  Crypto
//
//  Created by Julien on 23/07/2023.
//

import Foundation

extension UserDefaults {
    
    @objc dynamic var bitcoinQuantity: Float {
        get { return float(forKey: "BitcoinQuantity") }
        set { set(newValue, forKey: "BitcoinQuantity") }
    }

    @objc dynamic var etherumQuantity: Float {
        get { return float(forKey: "EtherumQuantity") }
        set { set(newValue, forKey: "EtherumQuantity") }
    }

    @objc dynamic var tetherQuantity: Float {
        get { return float(forKey: "TetherQuantity") }
        set { set(newValue, forKey: "TetherQuantity") }
    }

    @objc dynamic var binanceUSDQuantity: Float {
        get { return float(forKey: "BinanceUSDQuantity") }
        set { set(newValue, forKey: "BinanceUSDQuantity") }
    }

    @objc dynamic var cardanoQuantity: Float {
        get { return float(forKey: "CardanoQuantity") }
        set { set(newValue, forKey: "CardanoQuantity") }
    }

    @objc dynamic var solanaQuantity: Float {
        get { return float(forKey: "SolanaQuantity") }
        set { set(newValue, forKey: "SolanaQuantity") }
    }

    @objc dynamic var terraQuantity: Float {
        get { return float(forKey: "TerraQuantity") }
        set { set(newValue, forKey: "TerraQuantity") }
    }
}
