//
//  DisplayingCodeWithMarkDown.swift
//  StringInterpolation
//
//  Created by Manyuchi, Carrington C on 2024/12/20.
//

import SwiftUI

struct DisplayingCodeWithMarkDown: View {
    
    let codeString = """
**A SwiftUI View**

`struct DisplayingCodeWithMarkDown: View {`

    `var body: some View {`
        `Text("Hello, World!")`
    `}`
`}`

`#Preview {`
    `DisplayingCodeWithMarkDown()`
`}`

"""
    var body: some View {
        Text(LocalizedStringKey(codeString))
    }
}

#Preview {
    DisplayingCodeWithMarkDown()
}
