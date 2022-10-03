//
//  Encapsulation.swift
//  StocksFinalProject
//
//  Created by Stainley A Lebron R on 9/29/22.
//

import Foundation

protocol StockHoldingProtocol {
    
    var companyName: String {get}
    var purchaseSharePrice: Float {get set}
    var currentSharePrice: Float {get set}
    var numberOfShares: Int {get}
}
