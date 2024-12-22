//
//  TextDatesDemo.swift
//  StringInterpolation
//
//  Created by Manyuchi, Carrington C on 2024/12/22.
//

import SwiftUI

struct TextDatesDemo: View {
    
    let eventDate = Date(timeIntervalSinceNow: 15)
    let event = Date()
    let dateInterval = DateInterval(start: Date(), end: Date(timeIntervalSinceNow: 30))
    
    var body: some View {
        Form {
            Text("\(eventDate)")
            Text("\(event)")
            Text("\(dateInterval)")
        }
    }
}

#Preview {
    TextDatesDemo()
}
