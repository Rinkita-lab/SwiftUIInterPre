//
//  LazyVGrid.swift
//  swiftTest
//
//  Created by Rinkita Patil on 4/14/25.
//

import SwiftUI

struct LazyVGridBootcamp: View {
    let columns: [GridItem] = [
        ///1.   Show Fixed size
        //        GridItem(.fixed(50),spacing: nil,alignment: nil),
        //        GridItem(.fixed(50),spacing: nil,alignment: nil),
        //        GridItem(.fixed(50),spacing: nil,alignment: nil),
        //        GridItem(.fixed(50),spacing: nil,alignment: nil),
        //        GridItem(.fixed(50),spacing: nil,alignment: nil)
        
        ///2.   Show flaxible size
        
        //        GridItem(.flexible(),spacing: nil,alignment: nil),
        //        GridItem(.flexible(),spacing: nil,alignment: nil)
        
        ///4. Section
        GridItem(.flexible(),spacing: 6,alignment: nil),
        GridItem(.flexible(),spacing: 6,alignment: nil),
        GridItem(.flexible(),spacing: 6,alignment: nil)
        
    ]
    var body: some View {
        ///1.   Show Fixed size
        //        LazyVGrid(columns: columns,alignment: .center,spacing: 6,pinnedViews: [], content: {
        //           ForEach(0..<50) {_ in
        //        Rectangle()
        //             .frame(height: 60)
        //    }
        //        })
        
        
        ///2.   Show flaxible size
        
        //        LazyVGrid(columns: columns,alignment: .center,spacing:6,pinnedViews: [], content: {
        //            ForEach(0..<50) {_ in
        //                Rectangle()
        //                     .frame(height: 60)
        //            }
        //        })
        
        ///3. Show adaptive size
        
        ///4. Section
        ScrollView {
            LazyVGrid(columns: columns,alignment: .center,spacing:6,pinnedViews: [], content: {
                Section(header: 
                            Text("Section 1")
                    .foregroundColor(Color.red)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.blue)
                    .padding()
                )
                {
                    ForEach(0..<20) {_ in
                        Rectangle()
                            .frame(height: 60)
                    }
                }
                Section(header:
                            Text("Section 2")
                    .foregroundColor(Color.red)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.blue)
                    .padding()
                )
                {
                    ForEach(0..<50) {_ in
                        Rectangle()
                            .frame(height: 60)
                    }
                }
            })
            
        }
    }
}

#Preview {
    LazyVGridBootcamp()
}
