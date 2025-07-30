//
//  SpacerBootcamp.swift
//  swiftTest
//
//  Created by Rinkita Patil on 4/11/25.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        //WE can add spacer as a line in uiview.
        
//1.
//        HStack{
//            Spacer()
//                .frame(height: 10)
//                .background(Color.black)
//        }
//2.
        HStack{
            Spacer()
                .frame(height: 10)
                .background(Color.black)
            Rectangle()
                .fill(Color.red)
                .frame(width: 40, height: 40)
            Spacer()
                .frame(height: 10)
                .background(Color.black)
            Rectangle()
                .fill(Color.red)
                .frame(width: 40, height: 40)
            Spacer()
                .frame(height: 10)
                .background(Color.black)
            Rectangle()
                .fill(Color.red)
                .frame(width: 40, height: 40)
            Spacer()
                .frame(height: 10)
                .background(Color.black)
            Rectangle()
                .fill(Color.red)
                .frame(width: 40, height: 40)
            Spacer()
                .frame(height: 10)
                .background(Color.black)
            Rectangle()
                .fill(Color.red)
                .frame(width: 40, height: 40)
            Spacer()
                .frame(height: 10)
                .background(Color.black)
        }
    }
}

#Preview {
    SpacerBootcamp()
}
