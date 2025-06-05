import SwiftUI

public struct PrimaryButton: View {
    private let title: String
    private let action: () -> Void
    
    public init(title: String, action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }
    
    public var body: some View {
        Button(action: action) {
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
        }
    }
}

#Preview {
    PrimaryButton(title: "Tap Me") {
        print("Button tapped")
    }
    .padding()
} 