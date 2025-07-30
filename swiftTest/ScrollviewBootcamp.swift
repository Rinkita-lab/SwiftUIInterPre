//
//  ScrollviewBootcamp.swift
//  swiftTest
//
//  Created by Rinkita Patil on 4/14/25.
//

import SwiftUI

struct ScrollviewBootcamp: View {
    var body: some View {
/// VStack scrollview

//        ScrollView(.vertical, showsIndicators: true, content: {
//        VStack{
//                ForEach(0..<20){index in
//                    Rectangle()
//                        .fill(Color.brown)
//                        .frame(width: 200,height: 200)
//                        .cornerRadius(10)
//                }
//            }
//        })
        
        
/// HStack scrollview

//        ScrollView(.horizontal, showsIndicators: true, content: {
//            HStack{
//                ForEach(0..<20){index in
//                    Rectangle()
//                        .fill(Color.brown)
//                        .frame(width: 200,height: 200)
//                        .cornerRadius(10)
//                }
//            }
//        })
  
        
/// horizontal and vertical both scroll together  scrollview
        
        ScrollView(.vertical, showsIndicators: true, content: {
            LazyVStack{
                ForEach(0..<20){index in
                    ScrollView(.horizontal, showsIndicators: true, content: {
                        LazyHStack{
                            ForEach(0..<20){index in
                                Rectangle()
                                    .fill(Color.brown)
                                    .frame(width: 200,height: 200)
                                    .cornerRadius(10)
                                    .padding(10)
                            }
                        }
                        
                    })
                }
            }
        })

    }
}

#Preview {
    ScrollviewBootcamp()
}
