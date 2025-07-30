{\rtf1\ansi\ansicpg1252\cocoartf949
{\fonttbl}
{\colortbl;\red255\green255\blue255;}
\margl1440\margr1440\vieww9000\viewh8400\viewkind0
}
✅ Different is SwiftUI vs UIKIT ?

✅ Key Differences
        The primary difference lies in the programming paradigm. SwiftUI is declarative, which means you describe the UI based on the current state of data, and SwiftUI takes care of updating the UI when the data changes. UIKit is imperative, meaning you must manually tell the UI what to do, when to change, and how to transition between states.

        In SwiftUI, views are defined as structs, and you use layout containers like VStack, HStack, and ZStack to arrange views. In UIKit, you work with UIView subclasses and set constraints manually or use Interface Builder and Storyboards.

        SwiftUI comes with reactive state management built-in. When a @State variable changes, the view is automatically re-rendered. UIKit does not have built-in state management; developers have to manually observe and propagate state changes using delegates, target-action, or NotificationCenter.
       
✅ Which One Should You Use?
        If you're building a new app targeting iOS 14 or later, SwiftUI is a great choice due to its concise syntax, ease of use, and cross-platform capability. However, if you need to support older iOS versions, or you’re working with a complex, existing UIKit codebase, UIKit is the better option.
   

✅ How does data flow in SwiftUI?
SwiftUI's data flow is one-directional: State ➡ View ➡ Binding ➡ State, which ensures clarity, consistency, and reactivity. Different property wrappers (@State, @Binding, @ObservedObject, etc.) help manage where data lives, who owns it, and who can update it.

 what is @state>?
 what is @binding?
 
✅ What is a ViewBuilder?
@ViewBuilder is a special attribute that allows you to build multiple views from a closure and combine them into a single view result. It’s a result builder used under the hood by SwiftUI to let you write multiple views inside a closure—like inside a VStack, HStack, or body.
✅ Simple Example
struct MyStack: View {
    var body: some View {
        VStack {
            Text("Hello")
            Text("World")
        }
    }
}
Behind the scenes, VStack uses @ViewBuilder to accept two Text views in the closure.

✅ Creating a Custom View Using @ViewBuilder
struct CustomStack<Content: View>: View {
    let content: Content

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    var body: some View {
        VStack {
            content
        }
    }
}
🔸 Usage:
CustomStack {
    Text("First Line")
    Text("Second Line")
}

✅ Explain the difference between Spacer() and Divider()
✅ What is a NavigationView and how do you use it in SwiftUI?
✅ How do you show a modal sheet in SwiftUI?
