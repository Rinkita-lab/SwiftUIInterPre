//
//  InitAndEnum.swift
//  swiftTest
//
//  Created by Rinkita Patil on 4/14/25.
//

import SwiftUI

struct Initialization: View {
    var backgroundColor: Color
    var count: Int
    var TitleText: String

    enum Fruits {
        case apple
        case mango
    }

    init(count: Int, fruit: Fruits) {
        self.count = count
        
        // Initialize TitleText based on fruit
        switch fruit {
        case .apple:
            self.backgroundColor = .red
            self.TitleText = "Apple"
        case .mango:
            self.backgroundColor = .yellow
            self.TitleText = "Mango"
        }
    }

    var body: some View {
        VStack(spacing:10){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text("\(TitleText)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
        }
        .frame(width: 120, height: 100)
        .background(backgroundColor)
        .cornerRadius(5)
    }
}

struct Initialization_previews: PreviewProvider {
    static var previews: some View {
        HStack {
            Initialization(count: 50, fruit: .apple)
            Initialization(count: 150, fruit: .mango)
        }
    }
}
