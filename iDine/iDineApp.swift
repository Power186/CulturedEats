//
//  iDineApp.swift
//  iDine
//
//  Created by Scott on 11/22/20.
//

import SwiftUI

@main
struct iDineApp: App {
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppView()
                .environmentObject(order)
        }
    }
}
