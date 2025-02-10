//
//  TrianglePreview.swift
//  Roullete
//
//  Created by Diego Tauil on 06/02/25.
//

import Foundation
import SwiftUI

struct TrianglePreview: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 200, y: 100))
            path.addLine(to: CGPoint(x: 100, y: 300))
            path.addLine(to: CGPoint(x: 300, y: 300))
            path.addLine(to: CGPoint(x: 200, y: 100))
        }
        .stroke(.blue, style: StrokeStyle(lineWidth: 10 , lineCap: .round, lineJoin: .round))
    }
}

#Preview {
    TrianglePreview()
}
