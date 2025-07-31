//
//  Environment.swift
//  swiftTest
//
//  Created by Rinkita Patil on 7/31/25.
//

import SwiftUI

/*
 @Environment property wrapper is used to access shared values provided by the system or higher in the view hierarchy. These values describe aspects of the environment — such as color scheme, layout direction, presentation mode, etc.
 🧠 Why use @Environment?
     1. Access system settings like dark/light mode, locale, or dynamic type size
     2. Control view behavior (e.g., dismiss a modal)
 */

struct ModalView: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        VStack(spacing: 20) {
            Text("This is a modal view")

            Button("Dismiss") {
                dismiss()
            }
        }
        .padding()
    }
}


struct EnvironmentView: View {
    @State private var showModal = false

      var body: some View {
          VStack {
              Button("Open Modal") {
                  showModal = true
              }
          }
          .sheet(isPresented: $showModal) {
              ModalView()
          }
      }
}




#Preview {
    EnvironmentView()
}
