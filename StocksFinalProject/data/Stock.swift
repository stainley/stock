//
//  Stock.swift
//  ExampleTest
//
//  Created by Stainley A Lebron R on 9/28/22.
//

import Foundation

class Stock {
    
    // Global variable
    static var globalStocks: [StockHolding] = [StockHolding]()
    
    var stringFormattr: StringFormatter
    
    init() {
        self.stringFormattr = StringFormatter()
        // only used to populate data with 2 arrays
        getTenStocksWithForeignStock()
    }
    
    // EXERCISE 1
    func populateTenStocks() -> [StockHolding] {
                
        let stock1 = StockHolding(companyName: "NVIDIA", purchaseSharePrice: 2.30, currentSharePrice: 4.50, numberOfShares: 40)
        let stock2 = StockHolding(companyName: "AMD", purchaseSharePrice: 12.19, currentSharePrice: 10.56, numberOfShares: 90)
        let stock3 = StockHolding(companyName: "Apple", purchaseSharePrice: 45.10, currentSharePrice: 49.51, numberOfShares: 21)
        let stock4 = StockHolding(companyName: "Intel", purchaseSharePrice: 4.10, currentSharePrice: 12.3, numberOfShares: 27)
        let stock5 = StockHolding(companyName: "Google", purchaseSharePrice: 3.0, currentSharePrice: 10.0, numberOfShares: 13)
        let stock6 = StockHolding(companyName: "Amazon", purchaseSharePrice: 36.0, currentSharePrice: 16.0, numberOfShares: 45)
        let stock7 = StockHolding(companyName: "Netflix", purchaseSharePrice: 27.0, currentSharePrice: 16.0, numberOfShares: 26)
        let stock8 = StockHolding(companyName: "Nestle", purchaseSharePrice: 45.0, currentSharePrice: 16.0, numberOfShares: 17)
        let stock9 = StockHolding(companyName: "Bestbuy", purchaseSharePrice: 15.0, currentSharePrice: 16.0, numberOfShares: 10)
        let stock10 = StockHolding(companyName: "Coca Cola", purchaseSharePrice: 65.0, currentSharePrice: 16.0, numberOfShares: 40)
        
        return [stock1, stock2, stock3, stock4, stock5, stock6, stock7, stock8, stock9, stock10]
    }
    
    private func getGlobalStocks() {
        Stock.globalStocks = populateTenStocks()
    }
    
    // EXERCISE 2
    func getTenStocksWithForeignStock() -> [StockHolding] {
 
        Stock.globalStocks = self.populateTenStocks()
        
        let stock1 = ForeignStockHolding(companyName: "No Frills", purchaseSharePrice: 25.5, currentSharePrice: 16.0, numberOfShares: 37)
        let stock2 = ForeignStockHolding(companyName: "Fresh Food", purchaseSharePrice: 6.7, currentSharePrice: 5.12, numberOfShares: 15)
        
        Stock.globalStocks.append(stock1)
        Stock.globalStocks.append(stock2)
        return  Stock.globalStocks        
    }
}
