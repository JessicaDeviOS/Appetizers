//
//  XDismissButton.swift
//  Appetizers
//
//  Created by Jessica Mallian on 8/11/22.
//

import SwiftUI

struct XDismissButton: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 30, height: 30)
                .foregroundColor(.white)
                .opacity(0.6)
            
            Image(systemName: "xmark")
                .imageScale(.small)
                .frame(width: 44, height: 44)
                .foregroundColor(.brandPrimary)
        }
    }
}

struct XDismissButton_Previews: PreviewProvider {
    // TODO: is there anything to do so that in preview you can see the white background of the circle? 
    static var previews: some View {
        XDismissButton()
    }
}
