//
//  SystemIcons.swift
//  swiftTest
//
//  Created by Rinkita Patil on 4/7/25.
//

import SwiftUI

struct SystemIcons: View {
    var body: some View {
        /// we can add any icon name here which is SF icons this icons will be accebilble to us.
        Image(systemName: "heart.fill")
            .renderingMode(.template)
            .resizable()
            .font(.largeTitle)
            .font(.system(size: 200))
            .frame(width: 100, height: 100)
            .foregroundColor(.gray)
            .aspectRatio(contentMode: .fit)
            .scaledToFit()
            .clipped()
    }
}

#Preview {
    SystemIcons()
}
