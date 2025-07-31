//
//  darkModeSupport.swift
//  swiftTest
//
//  Created by Rinkita Patil on 7/31/25.
//

import SwiftUI

/*
 Implementing Dark Mode in SwiftUI is simple and automatic in most cases, because SwiftUI supports it by default. However, you can customize colors and behavior based on the current color scheme.
 ✅ 1. Use system colors that adapt automatically
 Text("Hello, World!")
     .foregroundColor(.primary) // Automatically adapts to light/dark mode
 .primary, .secondary, .background, etc. are adaptive system colors.
 */

struct darkModeSupport: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        Text(colorScheme == .dark ? "Dark mode": "light Mode")
            .padding()
            .background(colorScheme == .dark ? Color.black : Color.white)
            .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
            .cornerRadius(10)
    }
}

#Preview {
    darkModeSupport().preferredColorScheme(.dark) // for forcefully dark mode.
}
