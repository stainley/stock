//
//  main.swift
//  StocksFinalProject
//
//  Created by Stainley A Lebron R on 9/29/22.
//

import Foundation


fileprivate class Main {
    // Task 1
    // Populate ten instances of StockHolding. Display all stocks sorted by company name in alphabetical order.
    func printTenStockHolding() {
            
        for stock in Stock().populateTenStocks().sorted(by: {
            $0.getCompanyName() < $1.getCompanyName() }) {
            
            print(stock.printInformation(stockHolding: stock))
        }
    }

    // Task 2
    func printTenAndForeignStock() {
        let stockService = StockServices()
        
        for stock in stockService.sortedByCompanyNameReverse() {
            print(stock.printInformation(stockHolding: stock))
        }
    }

    // Task 3 Execute system with Menu
    func execute() {
        let runApp = MenuStockHolding()
        runApp.displayMenu()
    }
}


// TASK 1
//Main().printTenStockHolding()

// TASK 2
//Main().printTenAndForeignStock()

// TASK 3
Main().execute()
