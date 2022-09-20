//
//  SKProductExtensions.swift
//  SwifterSwift
//
//  Created by Batuhan Saka on 26.12.2019.
//  Copyright © 2019 SwifterSwift
//

#if canImport(StoreKit)
import StoreKit

@available(watchOS 6.2, *)
public extension SKProduct {
    private static let priceFormatter: NumberFormatter = {
        let priceFormatter = NumberFormatter()
        priceFormatter.numberStyle = .currency
        return priceFormatter
    }()

    /// SwifterSwift: Localized price of SKProduct
    var localizedPrice: String? {
        let formatter = Self.priceFormatter
        formatter.locale = priceLocale
        return formatter.string(from: price)
    }
}
#endif
