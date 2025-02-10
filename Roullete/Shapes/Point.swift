//
//  Point.swift
//  Roullete
//
//  Created by Diego Tauil on 06/02/25.
//

import Foundation
import SwiftUI

struct Point: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: .init(x: 200, y: 100))
        path.addLine(to: CGPoint(x: 200, y: 300 ))
        path.addLine(to: CGPoint(x: 300, y: 300))
        path.addLine(to: CGPoint(x: 100, y: 200))
        path.closeSubpath()
        return path
    }
}

#Preview {
    Point()
}
