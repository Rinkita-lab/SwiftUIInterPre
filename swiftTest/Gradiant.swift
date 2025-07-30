//
//  Gradiant.swift
//  swiftTest
//
//  Created by Rinkita Patil on 4/7/25.
//

import SwiftUI

struct Gradiant: View {
    var body: some View {
      RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(
//                LinearGradient(gradient: Gradient(colors: [.red, .orange, .blue, .purple]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)

//                RadialGradient(colors: [.red, .orange, .blue, .purple], center: .center, startRadius: 60, endRadius: 200)
                
//                AngularGradient.init(gradient: Gradient(colors: [Color.red, Color.blue]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, angle: /*@START_MENU_TOKEN@*/.degrees(90)/*@END_MENU_TOKEN@*/)
//                AngularGradient.init(gradient: Gradient(colors: [Color.red, Color.blue]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, angle: .degrees(0))
//                AngularGradient.init(gradient: Gradient(colors: [Color.red, Color.blue]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, angle: .degrees(180))
//                AngularGradient.init(gradient: Gradient(colors: [Color.red, Color.blue]), center: .leading, angle: .degrees(90))
                AngularGradient.init(gradient: Gradient(colors: [Color.red, Color.blue]), center: .topTrailing, angle: .degrees(180 + 90))
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    Gradiant()
}
