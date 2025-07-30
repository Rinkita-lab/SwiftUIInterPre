//
//  ImageBootcamp.swift
//  swiftTest
//
//  Created by Rinkita Patil on 4/8/25.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
     /// get image from assets
     Image("Screenshot")
            //.renderingMode(.template)
            .resizable()
           // .aspectRatio(contentMode: .fit)
           // .scaledToFit()
            .frame(width: 200, height: 200)
            .clipped()
           // .foregroundColor(.blue)
            //.cornerRadius(100)
            .clipShape(
                //Circle() // we can use .cornerRadius(100)
//                RoundedRectangle(cornerRadius: 20.0)
                Ellipse()
                
            )
    }
}

#Preview {
    ImageBootcamp()
}
