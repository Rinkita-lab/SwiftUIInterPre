//
//  StateObjectExample.swift
//  swiftTest
//
//  Created by Rinkita Patil on 7/31/25.
//

import SwiftUI

/*
 ✅ @StateObject
     Used when you create the object inside the view.
     SwiftUI manages and observes it.
 🟢 Use when: The view owns the data.
 */
class counterModel: ObservableObject{
    @Published var count = 0
}

struct StateObjectExample: View {
    @StateObject private var model = counterModel() // View owns the model
    var body: some View {
        VStack {
            Text("count: \(model.count)")
            Button("Increment") {
                model.count += 1
            }
        }
    }
}

#Preview {
    StateObjectExample()
}
