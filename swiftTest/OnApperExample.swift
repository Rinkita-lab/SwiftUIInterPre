//
//  OnApperExample.swift
//  swiftTest
//
//  Created by Rinkita Patil on 7/31/25.
//

import SwiftUI
/*
 onAppear is a view modifier in SwiftUI that runs a block of code when the view appears on the screen — meaning it's added to the view hierarchy.

 When is onAppear called?
     When the view is first loaded or comes back into view.
     It's useful for:
         Fetching data
         Starting animations
         Triggering timers or logging
         Initial setup logic
 */

struct OnApperExample: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onAppear {
                print("APPERED")
            }
    }
}

#Preview {
    OnApperExample()
}
