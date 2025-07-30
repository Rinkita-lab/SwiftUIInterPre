//
//  FramBootcamp.swift
//  swiftTest
//
//  Created by Rinkita Patil on 4/8/25.
//

import SwiftUI

struct FramBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.green)
            //.frame(width: 100, height: 100,alignment: .leading)
            //.frame(maxWidth: .infinity, alignment: .leading)
            .frame(maxHeight: .infinity, alignment: .leading)
            .background(Color.red)
    }
}

#Preview {
    FramBootcamp()
}
