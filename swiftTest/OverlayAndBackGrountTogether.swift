//
//  OverlayAndBackGrountTogether.swift
//  swiftTest
//
//  Created by Rinkita Patil on 4/8/25.
//

import SwiftUI

struct OverlayAndBackGrountTogether: View {
    var body: some View {
       Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(Color.white)
            .background(
             Circle()
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing
                    )
            )
            .frame(width: 80, height: 80)
            .shadow(color: .red, radius: 10, x:0.0, y:10)
            .overlay(
                Circle()
                .fill(.blue)
                .frame(width: 25,height: 25)
                .overlay(
                Text("5")
                    .font(.headline)
                    .foregroundColor(.white)
            )
                .shadow(color: Color.red, radius:10 , x:5, y:5),alignment: .bottomTrailing
            )
        )
            
    }
}

#Preview {
    OverlayAndBackGrountTogether()
}
