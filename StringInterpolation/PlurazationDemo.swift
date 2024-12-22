//
//  PlurazationDemo.swift
//  StringInterpolation
//
//  Created by Manyuchi, Carrington C on 2024/12/22.
//

import SwiftUI

struct PlurazationDemo: View {
    
    @State private var count = 0
    let nounList = [ "bread", "fish", "cat", "dog", "horse", "sheep", "elephant", "deer", "bird", "woman", "man", "child", "person", "plant", "animal"
        
    ]
    var body: some View {
        NavigationStack {
            VStack {
                Form {
                    ForEach(nounList, id: \.self) { noun in
                        LabeledContent(noun.capitalized) {
                            Text("^[\(count) \(noun.capitalized)](inflect: true)")
                        }
                    }
                }
                Button("increment", systemImage: "plus.circle.fill") {
                    count += 1
                }
            }
            .font(.title)
            .toolbar {
                ToolbarItem {
                    Button("Reset") {
                        count = 0
                    }
                }
            }
        }
        .navigationTitle("Plurazation Demo")
    }
}

#Preview {
    PlurazationDemo()
}
