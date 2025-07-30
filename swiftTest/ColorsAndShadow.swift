//
//  Colors.swift
//  swiftTest
//
//  Created by Rinkita Patil on 4/7/25.
//

import SwiftUI

struct ColorsAndShadow: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
              .fill(
  //                Color.gray
  //                Color(#colorLiteral(red: 0, green: 0.46, blue: 0.89, alpha: 1))
  //                 Color(UIColor.systemCyan)
                  Color("CustomColor")
                  )
              .frame(width: 300, height: 200)
              .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
              .shadow(color: Color("CustomColor").opacity(0.3), radius: 10, x: -20, y: -20)
    }
}

#Preview {
    ColorsAndShadow()
}
