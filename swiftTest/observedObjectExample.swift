//
//  observedObjectExample.swift
//  swiftTest
//
//  Created by Rinkita Patil on 7/31/25.
//

import SwiftUI
/*
 ✅ @ObservedObject
     Used when the object is passed from outside the view.
     The view observes it but does not own it.
 🟡 Use when: The data is shared and passed from a parent view.
 */
class CounterModel: ObservableObject{
    @Published var count = 0
}
struct observedObjectChildView: View{
    @ObservedObject var model: CounterModel // View observes, doesn't own
    
    var body: some View {
        VStack{
            Text("Count: \(model.count)")
            Button("Increament in child view"){
                model.count += 1
            }
        }
    }
}
struct observedObjectExample: View {
    @StateObject private var model = CounterModel()
    var body: some View {
        observedObjectChildView(model: model) // Passing model to child
    }
}

#Preview {
    observedObjectExample()
}
