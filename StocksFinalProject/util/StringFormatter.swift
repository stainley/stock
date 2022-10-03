//
//  StringFormatter.swift
//  StocksFinalProject
//
//  Created by Stainley A Lebron R on 9/30/22.
//

import Foundation

class StringFormatter {
    
    func formatString(toFormat: String) -> String {        
        return "\(String(repeating: "-", count: 100)) \n\(toFormat)\n \(String(repeating: "-", count: 100))"
    }
}
