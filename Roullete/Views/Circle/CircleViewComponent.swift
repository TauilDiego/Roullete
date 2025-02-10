//
//  CircleViewComponent.swift
//  Roullete
//
//  Created by Diego Tauil on 10/02/25.
//

import SwiftUI

struct CircleViewComponent: View {
    var segments: Int
    
    var body: some View {
        ZStack {
            ForEach(1...self.segments, id: \.self) { index in
                Circle()
                    .trim(from: index == 1 ? 0 : CGFloat(index-1)/CGFloat(self.segments), to: CGFloat(index)/CGFloat(self.segments))
                    .stroke(colorList[index%2], lineWidth: 100)
                    .onAppear() {
                        print(index % 2)
                    }
                    .frame(width: 200)
            }
        }
    }
}

#Preview {
    CircleViewComponent(segments: 4)
//        .frame(width: geometry.size.width, height: geometry.size.height)
}
