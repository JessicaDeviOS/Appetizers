//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Jessica Mallian on 7/29/22.
//

import SwiftUI

struct AppetizerListView: View {
    @State private var appetizers: [Appetizer] = []
    
    var body: some View {
        NavigationView {
            List(appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("🍟 Appetizers")
        }
        .onAppear {
            getAppetizers()
        }
    }
    
    private func getAppetizers() {
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

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
