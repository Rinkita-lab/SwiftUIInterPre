//
//  ForEachLoop.swift
//  swiftTest
//
//  Created by Rinkita Patil on 4/14/25.
//

import SwiftUI

struct ForEachLoop: View {
    let data: [String] = ["hii","hello","everyone"]
    var body: some View {
        VStack{
//            ForEach (0..<10) { index in
//                Text("hiii")
//                
//            }
            ForEach(data.indices) { index in
                Text("\(data[index]) \(index)")
            }
            ForEach(0..<20) { index in
               Circle()
            }
        }
    
    }
}

#Preview {
    ForEachLoop()
}
