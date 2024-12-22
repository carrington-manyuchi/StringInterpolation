//
//  ContentView.swift
//  StringInterpolation
//
//  Created by Manyuchi, Carrington C on 2024/12/20.
//

import SwiftUI


struct LineOfPeotry: Identifiable {
    let id: UUID = UUID()
    let line: String
    
    var firstChar: String {
        if let first = line.first {
            return String(first)
        } else {
            return ""
        }
    }
    var remainingLine: String {
        String(line.dropFirst())
    }
}

struct ArcosticPoemView: View {
    
  let poem = """
Dancing in the moonlight, free,
Reaching for the stars, we see.
Every wish, a whispered stream,
Aimikng high, in every scheme
"""
    var body: some View {
        VStack {
            Text(
                "\(Text("D").foregroundStyle(.red).bold().font(.largeTitle))reams. \(Text("Very Cool").foregroundStyle(.green))"
            )
           
            Text(poem)
        }
        .padding()
    }
}

#Preview {
    ArcosticPoemView()
}
