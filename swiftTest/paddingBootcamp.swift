//
//  padding.swift
//  swiftTest
//
//  Created by Rinkita Patil on 4/11/25.
//

import SwiftUI

struct paddingBootcamp: View {
    var body: some View {
        //  1.
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(Color.blue)
////            .padding()
//            .padding(.all, 10)
//            .background(Color.red)
        
       // 2.
        VStack(alignment: .leading){
            Text("Hello world")
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text("This is the description text This is the description text This is the description text This is the description text This is the description text")
                
        }
        .padding()
        .padding(.vertical, 30) // for add top and bottom padding together
        .background(Color.white
            .shadow(color: Color.black.opacity(0.3),radius: 10,x: 0.0, y: 10)
        )
        .padding(.horizontal, 10) // for add left and right padding together
    }
}

#Preview {
    paddingBootcamp()
}
