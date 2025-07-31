//
//  ListScrollViewForEachExample.swift
//  swiftTest
//
//  Created by Rinkita Patil on 7/31/25.
//

import SwiftUI
/*
 ✅ List
     A scrollable, single-column list designed for displaying rows of data.
     Automatically provides features like:
         Row separators
         Swipe to delete
         Reordering
     More optimized for large dynamic data.
 
 ✅ ScrollView
     A generic scroll container (vertical or horizontal).
     Doesn’t provide row-specific UI like List.
     You must manually manage layout and row separators.
 
 ✅ ForEach
     A looping construct used to repeat views.
     Must be used inside a container like List, ScrollView, or VStack.
     It itself does not scroll.
 */
struct ListScrollViewForEachExample: View {
    var body: some View {
        List {
            Text("Apple")
            Text("Banana")
        }
       
        ScrollView {
            VStack {
                Text("Apple")
                Text("Banana")
            }
        }
        ScrollView {
            VStack {
                ForEach(0..<3) { i in
                    Text("Item \(i)")
                }
            }
        }
       

    }
}

#Preview {
    ListScrollViewForEachExample()
}
