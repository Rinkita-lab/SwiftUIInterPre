//
//  SpacerAndDivider.swift
//  swiftTest
//
//  Created by Rinkita Patil on 7/30/25.
//

import SwiftUI
/*
 🔹 Spacer() :-
Add Space between Views.
used for :- Pushing views apart, centering, or aligning views using spacing.
 
 🔸 Divider()
 Creates a visible line (horizontal or vertical) between views.

 Used for:
 Separating sections or views visually.
 */
struct SpacerAndDivider: View {
    var body: some View {
        HStack {
            Text("Left")
            Spacer()
            Text("Right")
        }
        VStack {
            Text("Section 1")
            Divider()
            Text("Section 2")
        }

    }
}

#Preview {
    SpacerAndDivider()
}
