//
//  Arc.swift
//  Roullete
//
//  Created by Diego Tauil on 10/02/25.
//

import Foundation
import SwiftUI

struct Arc: Shape {
    let startAngle: Angle
    let endAngle: Angle
    let clockwise: Bool
    
    func path(in rect: CGRect) -> Path {
        let rotationAdjustment = Angle.degrees (90)
        let modifiedStart = startAngle - rotationAdjustment
        let modifiedEnd = endAngle - rotationAdjustment
        var path = Path ()
        path.move(to: CGPoint(x: rect.midX, y:  rect.midY - rect.width / 2))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.midY))
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width / 2, startAngle: modifiedStart, endAngle: modifiedEnd, clockwise: !clockwise)
        path.addLine(to: CGPoint(x: rect.midX, y: rect.midY))
        path.closeSubpath()
        return path
    }
}


#Preview {
    Arc(startAngle: .degrees(0), endAngle: .degrees (10), clockwise: true)
            .frame(width: 300, height: 300)
}
