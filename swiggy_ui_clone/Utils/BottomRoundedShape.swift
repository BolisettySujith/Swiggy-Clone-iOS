
import SwiftUI

struct BottomRoundedShape: Shape {
    var radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: rect.origin) // Top-left
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY)) // Top-right
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY - radius)) // Bottom-right
        path.addArc(
            center: CGPoint(x: rect.maxX - radius, y: rect.maxY - radius),
            radius: radius,
            startAngle: Angle(degrees: 0),
            endAngle: Angle(degrees: 90),
            clockwise: false
        )
        path.addLine(to: CGPoint(x: rect.minX + radius, y: rect.maxY)) // Bottom-left
        path.addArc(
            center: CGPoint(x: rect.minX + radius, y: rect.maxY - radius),
            radius: radius,
            startAngle: Angle(degrees: 90),
            endAngle: Angle(degrees: 180),
            clockwise: false
        )
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY)) // Back to top-left
        
        return path
    }
}

