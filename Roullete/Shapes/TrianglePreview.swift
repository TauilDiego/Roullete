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
            path.closeSubpath() 
        }
        .stroke(.blue, lineWidth: 10)
    }
}

#Preview {
    TrianglePreview()
}
