//
//  UIApplication.swift
//  CryptoVision
//
//  Created by Kushagra Sharma on 14/10/24.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
