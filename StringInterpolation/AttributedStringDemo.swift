//
//  AttributedStringDemo.swift
//  StringInterpolation
//
//  Created by Manyuchi, Carrington C on 2024/12/22.
//

import SwiftUI

struct AttributedStringDemo: View {
    
    var attr1Demo: AttributedString {
        var myString = AttributedString("Attributed String")
        myString.foregroundColor = .orange
        myString.backgroundColor = .black
        myString.font = .largeTitle
        myString.kern = 5
        return myString
    }
    
    var body: some View {
        Text(attr1Demo)
    }
}

#Preview {
    AttributedStringDemo()
}
