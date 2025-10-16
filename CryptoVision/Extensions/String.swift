//
//  String.swift
//  CryptoVision
//
//  Created by Kushagra Sharma on 14/10/24.
//

import Foundation

extension String {
    
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
    
}
