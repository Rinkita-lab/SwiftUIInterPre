//
//  Hstack.swift
//  swiftTest
//
//  Created by Rinkita Patil on 4/8/25.
//

import SwiftUI

struct Hstack: View {
    var body: some View {
        HStack{
            Text("Hello, World!")
                .font(.title)
            Text("Hello, World!")
                .foregroundColor(.blue)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .underline()
        }
    }
}

#Preview {
    Hstack()
}
