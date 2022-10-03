//
//  ForeignStockHolding.swift
//  ExampleTest
//
//  Created by Stainley A Lebron R on 9/28/22.
//

import Foundation

class ForeignStockHolding : StockHolding {
    
    var conversionRate: Float = 0.0    
    
    override func costInDollars() -> Float {
        conversionRate = Currency.CAD.rawValue
        return super.costInDollars() * conversionRate
    }
    
    override func valueInDollars() -> Float {
        conversionRate = Currency.CAD.rawValue
        return super.valueInDollars() * conversionRate
    }
    
}
