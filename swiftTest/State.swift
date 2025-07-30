//
//  SwiftUIView.swift
//  SwiftUIInterPre
//
//  Created by Rinkita Patil on 7/30/25.
//

import SwiftUI

//What is the purpose of the @State property wrapper?

//The @State property wrapper in SwiftUI is used to create mutable state inside a view. Its main purpose is to allow a SwiftUI view to store a value that can change over time, and to automatically trigger a UI update whenever that value changes.
//@State is private to the view. If you need to pass data to another view, you should use @Binding or @ObservedObject.
//@State only works with value types (like Int, Bool, String), not reference types.

struct CounterView: View {
    @State private var count = 0

    var body: some View {
        VStack {
            Text("Count: \(count)")
            Button("Increase") {
                count += 1 // This triggers a UI update
            }
        }
    }
}

#Preview {
    CounterView()
}
