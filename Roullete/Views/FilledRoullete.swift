//
//  FilledRoullete.swift
//  Roullete
//
//  Created by Diego Tauil on 10/02/25.
//

import SwiftUI

struct FilledRoullete: View {
    var body: some View {
        Arc(startAngle: .degrees(0), endAngle: .degrees(180), clockwise: true)
    }
}

#Preview {
    FilledRoullete()
}
