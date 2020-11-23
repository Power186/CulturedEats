//
//  Order.swift
//  iDine
//
//  Created by Scott on 11/23/20.
//

import SwiftUI

class Order: ObservableObject {
    @Published var items = [MenuItem]()
    @Published var favoriteItems = [MenuItem]()

    var total: Int {
        if items.count > 0 {
            return items.reduce(0) { $0 + $1.price }
        } else {
            return 0
        }
    }

    func add(item: MenuItem) {
        items.append(item)
    }
    
    func addFavorites(item: MenuItem) {
        favoriteItems.append(item)
    }

    func remove(item: MenuItem) {
        if let index = items.firstIndex(of: item) {
            items.remove(at: index)
        }
    }
}
