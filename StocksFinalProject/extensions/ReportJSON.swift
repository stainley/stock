//
//  PrintInformation.swift
//  StocksFinalProject
//
//  Created by Stainley A Lebron R on 9/29/22.
//

import Foundation

extension StockHolding {
    
    func printInformationJSON(stockHolding stock: StockHolding) -> String {
                
        return String()
            .appending("{")
            .appending("\n\t\"Company name\": \"\(stock.getCompanyName())\",")
            .appending("\n\t\"purchasePrice\": \(String(format: "$%.02f",stock.getPurchaseSharePrice())),")
            .appending("\n\t\"currentSharePrice\": \(String(format: "$%.02f",stock.getCurrentSharePrice())),")
            .appending("\n\t\"numberOfShares\": \(stock.getNumberOfShares()) ")
            .appending("\n\t\"costInDollars\": \(String(format: "$%.02f",stock.costInDollars())),")
            .appending("\n\t\"valueInDollars\": \(String(format: "$%.02f",stock.valueInDollars())),")
            .appending("\n}")
    }
}
