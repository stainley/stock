//
//  MenuStockHolding.swift
//  StocksFinalProject
//
//  Created by Stainley A Lebron R on 9/29/22.
//

import Foundation

class MenuStockHolding {
    let stockService: StockServices
    let stringFormatter: StringFormatter
    
    init() {
        self.stockService = StockServices()
        self.stringFormatter = StringFormatter()
    }
    
    ///
    /// Display the option menu
    func menu() {
        print(String(repeating: "*", count: 100))
        print("1-) Display stock information with the lowest value");
        print("2-) Display stock with the highest value");
        print("3-) Display the most profitable stock");
        print("4-) Display the least profitable stock");
        print("5-) List all stocks sorted by company name (A-Z)");
        print("6-) List all stocks sorted from the lowest value to the highest value");
        print("7-) Exit");
        print(String(repeating: "*", count: 100))
    }
    
    /// menu to Add Stocks
    func menuAddStock() {
        
        print("How many stock you want to add? ", terminator: "")
        let onlyNumber = "1234567890"
        let inputValue = readLine()!
        
        // if the user send empty string or [ENTER] show again the same question.
        if inputValue == "" {
            menuAddStock()
        }
        
        for input in inputValue {
            if onlyNumber.contains(input) {
                
                for stockNumber in 1...Int(inputValue)! {
                  
                    while true {
                        print("Add stock #\(stockNumber): \n\(stringFormatter.formatString(toFormat: "\t1-) Stock Holding\n\t2-) Foreign Stock Holding")) ")
                        print("Choose option 1 or 2: ", terminator: "")
                        let option: Int! = Int(readLine()!)
                        if option == nil || option == 0 {
                            continue
                        }
                        
                        switch option! {
                            case 1:
                                clearScreen(n: 50)
                                stockService.addStock(stockType: StockType.STOCK_HOLDING)
                                break
                            case 2:
                                clearScreen(n: 50)
                                stockService.addStock(stockType: StockType.FOREIGN_STOCK_HOLDING)
                                break
                            default:
                                print("Invalid option. Try again")
                                continue
                        }
                        break
                    }
                    continue
                }
            } else {
                print(stringFormatter.formatString(toFormat: "Invalid option. Exiting the application with exit code(9)"))
                exit(9)
            }
        }
    }
    
    // menu to process information selected
    func displayMenu() {

        menuAddStock()
        
        while true {
            menu()
            print("Choose and option: ", terminator: "")
            let option: Int! = Int(readLine()!);
           
            
            switch option {
                // 1) Display stock information with the lowest value
                case 1:
                    print("\(stringFormatter.formatString(toFormat: "Stock with the lowest price"))")
                    print(stockService.stockLowestValue().showInformation())
                    
                    messageReturnMainMenu()
                    let key = readLine();
                
                    while key != nil {
                        clearScreen(n: 10)
                        break
                    }
                // 2) Display stock with the highest value
                case 2:
                    print("\(stringFormatter.formatString(toFormat: "Stock with the highest price"))")
                    print(stockService.stockHighestValue().showInformation())
                
                    messageReturnMainMenu()
                    let key = readLine();
            
                    while key != nil {
                        clearScreen(n: 10)
                        break
                    }
                // 3) Display the most profitable stock
                case 3:
                    print("\(stringFormatter.formatString(toFormat: "Most profitable stock"))")
                    print(stockService.showTheMostProfitable().showInformation())
                    
                    messageReturnMainMenu()
                    let key = readLine();
        
                    while key != nil {
                        clearScreen(n: 10)
                        break
                    }
                // 4) Display the least profitable stock
                case 4:
                    print("\(stringFormatter.formatString(toFormat: "Least profitable stock"))")
                    print(stockService.showLeastProfitable().showInformation())
                
                    messageReturnMainMenu()
                    let key = readLine();

                    while key != nil {
                        clearScreen(n: 10)
                        break
                    }
                case 5:
                    print("\(stringFormatter.formatString(toFormat: "Stock sorted by company name (A-Z)"))")
                    for i in stockService.sortedByCompanyName() {
                        print(i.showInformation())
                    }
                    
                    messageReturnMainMenu()
                    
                    while readLine() != nil {
                        clearScreen(n: 10)
                        break
                    }
                // 6) List all stocks sorted from the lowest value to the highest value
                case 6:
                    print("\(stringFormatter.formatString(toFormat: "All stocks sorted from the lowest value to the highest value"))")
                    
                    for stocks in stockService.sortedByLowestValue(){
                        print(stocks.showInformation())
                    }
                    messageReturnMainMenu()
                    
                    while readLine() != nil {
                        clearScreen(n: 10)
                        break
                    }
                // 7) Exit
                case 7:
                    print("Are you sure you want to Exit? Please press Y to exit. ", terminator: "")
                    let option = readLine();
                    
                    if option!.uppercased() == "Y" {
                        clearScreen(n: 100)
                        print("\n\nThanks for using StockHolding System")
            
                        sleep(3)
                        usleep(1)
                        exit(0)
                        break
                    }
                    continue
                default:
                    clearScreen(n: 10)
                    print("Invalid option. Try again\n")
            }
        }
    }
    
    func clearScreen(n: Int) {
        print("", terminator: Array(repeating: "\n", count: n).joined())
    }
    
    func messageReturnMainMenu() {
        print("Press [ENTER] to return to main menu. ", terminator: "")
    }

}
