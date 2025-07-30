//
//  Binding.swift
//  swiftTest
//
//  Created by Rinkita Patil on 7/30/25.
//

import SwiftUI
/*✅ What is the purpose of @Binding in SwiftUI?

@Binding is a property wrapper in SwiftUI used to create a two-way connection between a parent view's state and a child view's input. It allows a child view to read and modify a value that’s owned by its parent.

In simple terms:
@State owns the data, @Binding accesses and modifies it from another view.

🎯 Why use @Binding?

In SwiftUI, each view owns its own state using @State. But when you want to pass that state down to another view and let the child modify it, you use @Binding.

This keeps your data centralized and avoids duplicating state.*/

struct ParentView: View {
        @State private var isOn = false

        var body: some View {
            ToggleView(isToggled: $isOn) // Pass binding with $
        }
    }
#Preview {
    ParentView()
}

struct ToggleView: View {
    @Binding var isToggled: Bool

    var body: some View {
        Toggle("Enable Option", isOn: $isToggled)
    }
}


