//
//  Coin.swift
//  coins
//
//  Created by Jeff on 11/4/17.
//  Copyright © 2017 Jeff. All rights reserved.
//

import Foundation
import RealmSwift
import ObjectMapper

class Coin:Object, Mappable {
    @objc dynamic var id = ""
    @objc dynamic var name = ""
    @objc dynamic var symbol = ""
    @objc dynamic var rank = ""
    @objc dynamic var price_usd = ""
    @objc dynamic var price_btc = ""
    @objc dynamic var market_cap_usd = ""
    @objc dynamic var available_supply = ""
    @objc dynamic var percent_change_24h = ""
    @objc dynamic var percent_change_7d = ""
    
    // Optional
    @objc dynamic var logo = ""
    
    // Variables set by user
    @objc dynamic var owned: Bool = false
    @objc dynamic var amount: Double = 0.0
    
    // Computed value
//    @objc dynamic var value: Double {
//        let x =  Double(price_usd)! * amount
//        return Double(round(100 * x) / 100)
//    }
//
    
    override static func primaryKey() -> String? {
        return "id"
    }
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        id                  <- map["id"]
        name                <- map["name"]
        symbol              <- map["symbol"]
        rank                <- map["rank"]
        price_usd           <- map["price_usd"]
        price_btc           <- map["price_btc"]
        market_cap_usd      <- map["market_cap_usd"]
        available_supply    <- map["available_supply"]
        percent_change_24h  <- map["percent_change_24h"]
        percent_change_7d   <- map["percent_change_7d"]
    }
}
