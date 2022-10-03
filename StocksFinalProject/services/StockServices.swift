//
//  StockServices.swift
//  StocksFinalProject
//
//  Created by Stainley A Lebron R on 9/30/22.
//

import Foundation

class StockServices {
    let stringFormattr: StringFormatter
    var stock: Stock
    
    init() {
        self.stringFormattr = StringFormatter()
        self.stock = Stock()        
    }
    
    // Return 10 stocks unsorted
    func getTenStocks() -> [StockHolding] {
        return Stock.globalStocks
    }
   
    func addStock(stockType: StockType) {  
        print(stringFormattr.formatString(toFormat: stockType.rawValue.capitalized))
        
        print("\tCompany name: ", terminator: "")
        let companyName = readLine()!
        print("\tPurchase Share Price: ", terminator: "")
        let purchaseSharePrice = Float(readLine()!)!
        print("\tCurrent Share Price: ", terminator: "")
        let currentSharePrice = Float(readLine()!)!
        print("\tNumber of shares: ", terminator: "")
        let numberOfShares = Int(readLine()!)!
                
        switch stockType {
            case .STOCK_HOLDING:
                let stockHodling = StockHolding(companyName: companyName, purchaseSharePrice: purchaseSharePrice, currentSharePrice: currentSharePrice, numberOfShares: numberOfShares)
                Stock.globalStocks.append(stockHodling)
                print(stringFormattr.formatString(toFormat: "Stock has been created"), terminator: "\n")
                break
            
            case .FOREIGN_STOCK_HOLDING:
                let foreignStockHolding = ForeignStockHolding(companyName: companyName, purchaseSharePrice: purchaseSharePrice, currentSharePrice: currentSharePrice, numberOfShares: numberOfShares)
            Stock.globalStocks.append(foreignStockHolding)
                print(stringFormattr.formatString(toFormat: "Stock has been created"), terminator: "\n")
                break
        }
    }
    
    // Display all the stocks sorted by company name in reverse alphabetical order
    func sortedByCompanyNameReverse() -> [StockHolding] {
        let stocks = stock.getTenStocksWithForeignStock()
        
        return stocks.sorted(by: {
            $0.getCompanyName() > $1.getCompanyName()
        })
    }    

    // 1) Display stock information with the lowest value
    func stockLowestValue() -> StockHolding {
        let stocks = Stock.globalStocks
        
        let lowestValue = stocks.max(by: {
            $0.costInDollars() > $1.costInDollars()
        })
        
        return lowestValue!
    }
    
    // 2) Display stock with the highest value
    func stockHighestValue() -> StockHolding {
        let stocks = Stock.globalStocks
        
        let highValue = stocks.max(by: {
            $0.costInDollars() < $1.costInDollars()
        })
        
        return highValue!
    }
    
    // 3) Display the most profitable stock
    func showTheMostProfitable() -> StockHolding {
        let stocks = Stock.globalStocks
        
        let mostProfitable = stocks.max(by: {
            round($0.valueInDollars() - $0.costInDollars()) > round($1.valueInDollars() - $1.costInDollars())
        })
        
        return mostProfitable!
    }
    
    // 4) Display the least profitable stock
    func showLeastProfitable() -> StockHolding {
        let stocks = Stock.globalStocks
        
        let mostProfitable = stocks.max(by: {
            round($0.valueInDollars() - $0.costInDollars()) < round($1.valueInDollars() - $1.costInDollars())
        })
        return mostProfitable!
    }
    
    // 5) List all stocks sorted by company name (A-Z)
    func sortedByCompanyName() -> [StockHolding] {
        let stocks = Stock.globalStocks
        
        return stocks.sorted(by: {
            $0.getCompanyName() < $1.getCompanyName()
        })
    }
    
    // 6) List all stocks sorted from the lowest value to the highest value
    func sortedByLowestValue() -> [StockHolding] {
        let stocks = Stock.globalStocks
        
        return stocks.sorted(by: {
            $0.costInDollars() < $1.costInDollars()
        })
    }
}
