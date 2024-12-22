//
//  MarkDown_Demo.swift
//  StringInterpolation
//
//  Created by Manyuchi, Carrington C on 2024/12/20.
//

import SwiftUI

struct MarkDown_Demo: View {
    
    let favoriteWebsites = """
***My favorite Websites***
___My favorite Websites___

Hre are some examples of my favorites websites for learning and exploring


1. **[Figma](https://figma.com/)**: A collaborative interfave design too for teams to ceate, prototype, and collaborate on dogital designs in real time 

2. *[Laws of UX](https://pexels.com/)*: A collection of principles that describes how users interact with interfaces, guiding designers to create more effective and intuitive user experiences. 

 3. ***[Pexels](https://www.pexels.com/)***: A platform offering free stock photos, videos, and music that can be used for pesonal and commercial projects without attribution, 

~~Feel free to check them out!~~
Feel free to check them out!
"""
    
    var body: some View {
        Text(LocalizedStringKey(favoriteWebsites))
        .tint(.red)
        .foregroundStyle(.gray)
        .padding()
    }
}

#Preview {
    MarkDown_Demo()
}
