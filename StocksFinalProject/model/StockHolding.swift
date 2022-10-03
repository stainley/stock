//
//  StockHolding.swift
//  ExampleTest
//
//  Created by Stainley A Lebron R on 9/28/22.
//

import Foundation

class StockHolding : StockHoldingProtocol {
    
    let companyName: String
    internal var purchaseSharePrice: Float
    internal var currentSharePrice: Float
    internal var numberOfShares: Int
    
    init(companyName: String, purchaseSharePrice: Float, currentSharePrice: Float, numberOfShares: Int) {
        self.companyName = companyName
        self.purchaseSharePrice = purchaseSharePrice
        self.currentSharePrice = currentSharePrice
        self.numberOfShares = numberOfShares
    }
    

    func costInDollars() -> Float {
        return purchaseSharePrice * Float(numberOfShares)
    }

    func valueInDollars() -> Float {        
        return currentSharePrice * Float(numberOfShares)
    }
    
    func getCompanyName() -> String {
        return companyName
    }
    
    func getPurchaseSharePrice() -> Float {
        return purchaseSharePrice
    }
    
    func getCurrentSharePrice() -> Float {
        return currentSharePrice
    }
    
    func getNumberOfShares() -> Int {
        return numberOfShares
    }    
    
    func showInformation() -> String {
        return printInformation(stockHolding: self)
    }

}
