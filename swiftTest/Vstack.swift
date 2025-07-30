//
//  Vstack.swift
//  swiftTest
//
//  Created by Rinkita Patil on 4/8/25.
//

import SwiftUI

struct Vstack: View {
    var body: some View {
        VStack {
            Rectangle()
                .fill(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
                .frame(width: 100,height: 100)
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100,height: 100)
            Rectangle()
                .fill(Color.red)
                .frame(width: 100,height: 100)
        }
        
    }
}

#Preview {
    Vstack()
}
