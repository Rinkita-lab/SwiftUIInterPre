//
//  NavigationView.swift
//  swiftTest
//
//  Created by Rinkita Patil on 7/30/25.
//

import SwiftUI
/*
 NavigationView is a container view in SwiftUI that provides a navigation interface, similar to UINavigationController in UIKit.
 🔹 Purpose of NavigationView:
     Enables navigation between views using push/pop behavior.
     Adds a navigation bar at the top of your view.
     Allows you to set a navigation title, toolbar items, and support for navigation links.
     
    NavigationView: Wraps content to provide navigation capabilities.
    NavigationLink: Used inside a NavigationView to push another view.
    .navigationTitle("Title"): Sets the title of the navigation bar.
    .navigationBarItems(): Add buttons to the leading/trailing of the bar (iOS 14 and earlier).
    .toolbar {}: New way (from iOS 14+) to add items to the navigation bar.

 */
struct MyNavigationView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Home Screen")
                NavigationLink("Go to Details", destination: DetailView())
            }
            .navigationTitle("Home")
        }
    }
}

struct DetailView: View {
    var body: some View {
        Text("Detail Screen")
            .navigationTitle("Details")
    }
}

#Preview {
    MyNavigationView()
}
