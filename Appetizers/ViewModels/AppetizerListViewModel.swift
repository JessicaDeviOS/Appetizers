//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Jessica Mallian on 8/9/22.
//

import SwiftUI

final class AppetizerListViewModel: ObservableObject {
    @Published var appetizers: [Appetizer] = []
    
    func getAppetizers() {
        NetworkManager.shared.getAppetizers { result in
            // go to the main thread because this is SwiftUI and setting an @State property will trigger a UI update
            DispatchQueue.main.async {
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    print("oh no \(error)")
                }
            }
        }
    }
}
