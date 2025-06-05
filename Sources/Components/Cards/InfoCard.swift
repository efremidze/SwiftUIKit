import SwiftUI

public struct InfoCard: View {
    private let title: String
    private let description: String
    private let icon: String
    
    public init(title: String, description: String, icon: String) {
        self.title = title
        self.description = description
        self.icon = icon
    }
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Image(systemName: icon)
                    .font(.title2)
                    .foregroundColor(.blue)
                Text(title)
                    .font(.headline)
            }
            
            Text(description)
                .font(.body)
                .foregroundColor(.secondary)
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 2)
    }
}

#Preview {
    InfoCard(
        title: "Welcome",
        description: "This is a sample info card component that you can use in your app.",
        icon: "info.circle"
    )
    .padding()
} 