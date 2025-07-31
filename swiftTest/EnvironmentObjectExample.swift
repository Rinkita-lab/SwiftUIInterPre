//
//  EnvironmentObjectExample.swift
//  swiftTest
//
//  Created by Rinkita Patil on 7/31/25.
//

import SwiftUI
/*
 ✅ @EnvironmentObject
     Used to share data globally across many views without passing manually.
     The view gets it from the SwiftUI environment.
 🔵 Use when: You want to access shared app-wide data.
 */

class userSettings: ObservableObject{
    @Published var username = "Guest"
}

struct EnvironmentObjectChildView: View{
    @EnvironmentObject var setting:userSettings
    var body: some View{
        Text("Hello, \(setting.username)")
    }
}

struct EnvironmentObjectExample: View {
    @StateObject private var settings = userSettings()
    var body: some View {
        EnvironmentObjectChildView().environmentObject(settings) // Injecting environment object
    }
}

#Preview {
    EnvironmentObjectExample()
}
