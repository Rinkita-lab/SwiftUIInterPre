//
//  ZStack.swift
//  swiftTest
//
//  Created by Rinkita Patil on 4/8/25.
//

import SwiftUI

struct Zstack: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.blue)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 80,height: 80)
            Rectangle()
                .fill(Color.red)
                .frame(width: 60,height: 60)
        }
    }
}

#Preview {
    Zstack()
}
