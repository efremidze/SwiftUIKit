import SwiftUI

public struct ShadowModifier: ViewModifier {
    private let radius: CGFloat
    private let color: Color
    private let x: CGFloat
    private let y: CGFloat
    
    public init(
        radius: CGFloat = 2,
        color: Color = .black.opacity(0.1),
        x: CGFloat = 0,
        y: CGFloat = 1
    ) {
        self.radius = radius
        self.color = color
        self.x = x
        self.y = y
    }
    
    public func body(content: Content) -> some View {
        content
            .shadow(
                color: color,
                radius: radius,
                x: x,
                y: y
            )
    }
}

public extension View {
    func customShadow(
        radius: CGFloat = 2,
        color: Color = .black.opacity(0.1),
        x: CGFloat = 0,
        y: CGFloat = 1
    ) -> some View {
        modifier(ShadowModifier(radius: radius, color: color, x: x, y: y))
    }
} 