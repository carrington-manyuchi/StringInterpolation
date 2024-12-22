//
//  ListMemberStyleAndMeasurementsDemo.swift
//  StringInterpolation
//
//  Created by Manyuchi, Carrington C on 2024/12/22.
//

import SwiftUI

struct ListMemberStyleAndMeasurementsDemo: View {
    
    let streetNames = [
        "Main Street", "Second Street", "Third Street"
    ]
    
    let even = [0, 2, 4, 6, 8, 10]
    
    let length = Measurement(value: 226, unit: UnitLength.centimeters)
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(streetNames, format: .list(type: .and))
            Text(streetNames, format: .list(type: .and))
            Text(even, format: .list(memberStyle: .number, type: .and))
            Text(even, format: .list(memberStyle: .percent, type: .and))
            Text(length, format: .measurement(width: .wide))
        }
        .font(.title)
        .padding()
    }
}

#Preview {
    ListMemberStyleAndMeasurementsDemo()
}
