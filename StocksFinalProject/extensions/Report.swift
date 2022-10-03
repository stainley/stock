//
//  Report.swift
//  StocksFinalProject
//
//  Created by Stainley A Lebron R on 10/2/22.
//

import Foundation

extension StockHolding {
    
    func printInformation(stockHolding stock: StockHolding) -> String {
                
        return(
        """
        
        \(String(repeating: "-", count: 100))
        Company Name: \(stock.companyName)
            - Purchase Price: \(String(format: "$%.02f",stock.getPurchaseSharePrice()))
            - Current Share Price: \(String(format: "$%.02f",stock.getCurrentSharePrice()))
            - Number of Shares: \(stock.getNumberOfShares())
                * Cost in dollars: \(String(format: "$%.02f",stock.costInDollars()))
                * Value in dollars: \(String(format: "$%.02f",stock.valueInDollars()))
        \(String(repeating: "-", count: 100))
        """
        ) 
    }
}
