//
//  SafeAreaBootcamp.swift
//  swiftTest
//
//  Created by Rinkita Patil on 4/17/25.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        ///1.
        //        VStack{
        //            Text("Hello, World!")
        //                .padding(.top, 50)
        //            Spacer()
        //        }
        //            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        //            .background(Color.red)
        //            .edgesIgnoringSafeArea(.all)
        
        
        ///2.
        ScrollView{
            VStack {
                Text("title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                ForEach(0..<10){_ in
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                    
                }
            }
        }
        .background(
            Color.red)
        .edgesIgnoringSafeArea(.top)
        //.ignoresSafeArea(edges: .top)
    }
}

#Preview {
    SafeAreaBootcamp()
}
