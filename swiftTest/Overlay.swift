//
//  Overlay.swift
//  swiftTest
//
//  Created by Rinkita Patil on 4/8/25.
//

import SwiftUI

struct Overlay: View {
    var body: some View {
        Circle()
            .fill(Color.gray)
            .frame(width: 100, height: 100)
            .overlay(
              Text("1")
                .font(.title)
        )
    }
    
}

#Preview {
    Overlay()
}
