//
//  FormValidationView.swift
//  swiftTest
//
//  Created by Rinkita Patil on 7/31/25.
//

import SwiftUI
/*
 ✅ Step 1: Use @State to Track Input
 Use @State properties to store user input values.
 ✅ Step 2: Add Validation Logic
 Use computed properties or inline logic to check if the inputs are valid.
 ✅ Step 3: Show Validation Messages / Disable Buttons
 Based on the validation, you can show error messages or disable the Submit button.
 */

struct FormValidationView: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var showError: Bool = false

    // Simple validation rule
    var isFormValid: Bool {
        !name.isEmpty && email.contains("@")
    }

    var body: some View {
        Form {
            Section(header: Text("User Info")) {
                TextField("Name", text: $name)
                TextField("Email", text: $email)
                    .keyboardType(.emailAddress)
            }

            if showError && !isFormValid {
                Text("Please enter a valid name and email.")
                    .foregroundColor(.red)
            }

            Button("Submit") {
                if isFormValid {
                    print("Form Submitted!")
                } else {
                    showError = true
                }
            }
            .disabled(!isFormValid)
        }
    }
}


#Preview {
    FormValidationView()
}
