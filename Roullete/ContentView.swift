//
//  ContentView.swift
//  Roullete
//
//  Created by Diego Tauil on 05/02/25.
//

import SwiftUI

struct DynamicColoredCircle: View {
    @State var segments: Int = 5
    @State var circleSize: Double = 1.0
    @State private var indicator: Double = 5.0
    @State private var isEditing: Bool = false
    
    var body: some View {
            GeometryReader { geometry in
                VStack {
                    Slider(
                        value: $indicator,
                        in: 1...10,
                        step: 1,
                        onEditingChanged: { editing in
                            isEditing = editing
                        }
                        
                    )
                    .onChange(of: indicator) { oldValue, newValue in
                        withAnimation(.bouncy(duration: 0.3)) {
                            self.segments = Int(newValue)
                        }
                    }
                    
                    CircleViewComponent(segments: self.segments)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                    
                }
                
            }
            .aspectRatio(1, contentMode: .fit)
    }
}

struct ContentView: View {
    var body: some View {
        DynamicColoredCircle()
            .padding()
    }
}

#Preview {
    ContentView()
}


extension Color {
    static var random: Color {
        return Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
}
