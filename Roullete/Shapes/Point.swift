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
        path.move(to: .init(x: rect.midX, y: rect.midY))
//        path.addRoundedRect(in: CGRect  , cornerSize: CGSize(width: 100, height: 100))
        return path
    }
}

#Preview {
    Point()
}
