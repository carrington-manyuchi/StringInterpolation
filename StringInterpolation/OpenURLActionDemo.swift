//
//  OpenURLActionDemo.swift
//  StringInterpolation
//
//  Created by Manyuchi, Carrington C on 2024/12/20.
//

import SwiftUI

struct OpenURLActionDemo: View {
    
    let fontAwesome = "**[FontAwesome](https://fontawesome.com/search?m=free&o=r)**"
    @State private var visits: Int = 0
    let maxVisits = 4 //Should be atleast 3
    
    var visitMe: String {
        switch (visits) {
        case 0: return "Check out \(fontAwesome) for some great fonts!"
        case 1: return "You've visited \(fontAwesome) once!"
        case 2: return "You've visited \(fontAwesome) twice!"
        case ...maxVisits: return "You've visited \(fontAwesome) three times!"
        default:
            return "You've visited \(fontAwesome) \(visits) times!"
        }
    }
    
    @State private var actOfKindnessURLFromGoogle = "[Act of kindness](https://www.onesmallactofkindness.org.za/)"
    @State private var actOfKindnessURL = "[Another Act of kindness](https://www.randomactsofkindness.org/kindness-ideas)"
    
    @State private var showAlert = false
    
    var body: some View {
        Form {
            Text(LocalizedStringKey(visitMe))
                .environment(\.openURL, OpenURLAction { url in
                    visits += 1
                    return .systemAction
                })
                
            Text(LocalizedStringKey(actOfKindnessURL))
                .environment(\.openURL, OpenURLAction { url in
                    if url.absoluteString.count < 12 || url.absoluteString.contains("ideas") {
                        print("suspicious email")
                        showAlert = true
                        return .discarded
                    } else {
                        return .systemAction
                    }
                })
                .tint(.red)
            
            Text(LocalizedStringKey(actOfKindnessURLFromGoogle))
                .environment(\.openURL, OpenURLAction { url in
                   if url.absoluteString.contains("google") {
                       return .handled
                   } else if visits < 2 {
                       return .systemAction
                   } else {
                       return .systemAction
                   }
                })
                .tint(.green)
        }
        .tint(.secondary)
        .bold()
        .foregroundStyle(.blue)
        .alert("Google is blocked", isPresented: $showAlert) {
            Button("Ok", role: .cancel) {
                
            }
        }
    }
}

#Preview {
    OpenURLActionDemo()
}
