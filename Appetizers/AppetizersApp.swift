//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Jessica Mallian on 7/29/22.
//

import SwiftUI

@main
struct AppetizersApp: App {
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView()
                .environmentObject(order)
        }
    }
}
