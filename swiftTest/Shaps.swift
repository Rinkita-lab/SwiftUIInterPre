//
//  Shaps.swift
//  swiftTest
//
//  Created by Rinkita Patil on 4/7/25.
//

import SwiftUI

struct Shaps: View {
    @State var bgcolor: UIColor = .red
    var body: some View {
        /// ADD SHAPS
        ///
// 1.
        Circle() // Add a circle.
         .trim(from: 0.5, to: 1.0)
//         .stroke() // Remove circle background color and add only border to the circle.
//         .stroke(Color.gray, lineWidth: 30) // Add gray color to the circle border and apply border width as well.
         .stroke(Color.gray, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [30]))
         .frame(width: 400,height: 200)
         .background(Color(uiColor: bgcolor)) //apply background color.
// 2.
//        Rectangle()
//        Ellipse()
//        Capsule(style: .circular)
//        .fill(Color.gray) //add background color
//        .foregroundColor(.blue)
        
      /*  RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                Color.gray
//                Color(#colorLiteral(red: 0, green: 0.46, blue: 0.89, alpha: 1))
//                 Color(UIColor.systemCyan)
                Color("CustomColor")
                )
            .frame(width: 300, height: 200)
            //.shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            //.shadow(color: Color("CustomColor").opacity(0.3), radius: 10, x: -20, y: -20)
*/
    }
}

#Preview {
    Shaps()
}
