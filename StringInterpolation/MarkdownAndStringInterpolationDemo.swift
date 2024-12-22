//
//  MarkdownAndStringInterpolation.swift
//  StringInterpolation
//
//  Created by Manyuchi, Carrington C on 2024/12/20.
//

import SwiftUI

struct MarkdownAndStringInterpolationDemo: View {
    
    
    let rainbow = LinearGradient(
        colors: [
            .red, .yellow, .green, .blue, .purple,
            .orange, .green, .pink, .purple
        ],
        startPoint: .leading,
        endPoint: .trailing
    )
    
    var rainbowWelcome: Text {
        Text("*Welcome*")
            .foregroundStyle(rainbow)
    }
    
    var programText: Text {
        Text("**[programming](https://en.wikipedia.org/wiki/COmputer_programming)**")
    }
    
    var body: some View {
        Text("\(rainbowWelcome) to the wonderful world of \(programText)!")
            .padding()
            .font(.largeTitle)
            .tint(.green)
            .multilineTextAlignment(.center)
    }
}

#Preview {
    MarkdownAndStringInterpolationDemo()
}
