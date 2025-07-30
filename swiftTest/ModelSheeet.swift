//
//  ModelSheeet.swift
//  swiftTest
//
//  Created by Rinkita Patil on 7/30/25.
//

import SwiftUI

struct ModelSheeet: View {
    @State private var showSheet = false

    var body: some View {
        VStack {
            Button("Show Sheet") {
                showSheet = true
            }
        }
        .sheet(isPresented: $showSheet) {
            SheetView()
        }
    }
}

struct SheetView: View {
    var body: some View {
        VStack {
            Text("This is a modal sheet")
                .font(.title)
            Text("Swipe down to dismiss")
        }
        .padding()
    }
}

#Preview {
    ModelSheeet()
}
