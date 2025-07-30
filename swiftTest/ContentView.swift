//
//  ContentView.swift
//  swiftTest
//
//  Created by Rinkita Patil on 4/3/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ///  ADD TEXT AND TEXT PROPERTIES.
        ///
        Text("hello World" .capitalized)
            //.font(.body) //
            .fontWeight(.black) //dark font color
            //.bold()
//            .underline()
//            .underline(true, color: Color.red)
            .italic()
//            .strikethrough() // add line on text.
            .font(.system(size: 30, weight: .semibold, design: .default)) // apply font property together
//            .baselineOffset(150.0) // change top spacing of Text if - then it will go down.
            .kerning(10) // add space b/w word characters
//            .multilineTextAlignment(.leading) // if Text is multiline so provide text alignment
//            .foregroundColor(.blue) // apply text color
            .frame(width: 200, height: 100, alignment: .center) // Apply fixed height and width and text allignment
            .border(Color.red) //apply border and border color
//            .lineLimit(1) // show text only in one line.
//            .minimumScaleFactor(0.1) // shrink text if line condition is 1 and we have long text at this time we will use it.
        
        
    }
}

#Preview {
    ContentView()
}
