import SwiftUI

struct FoodList: View {
    let foods = Food.preview()

    var body: some View {
        NavigationStack {
            List(foods, id: \.name) { food in
                NavigationLink(destination: FoodDetail(food: food)) {
                    HStack {
                        Text(food.icon)
                        Text(food.name)
                    }
                }
            }
            .navigationTitle("Foods")
        }
    }
}

struct FoodDetail: View {
    var food: Food
    @State private var isNavigationBarHidden = false
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack(spacing: 20) {
                    Text(food.icon).font(.system(size: 80))
                    Text(food.name).font(.title)
                    
                    // Add some content to demonstrate scrolling
                    ForEach(0..<20) { index in
                        Text("Content \(index + 1)")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(8)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .top)
                .padding(.top, geometry.safeAreaInsets.top + 16)
                .padding([.horizontal, .bottom])
            }
            .edgesIgnoringSafeArea(.all)
            .onAppear {
                // Hide navigation bar when view appears
                isNavigationBarHidden = true
            }
            .onDisappear {
                // Show navigation bar when view disappears
                isNavigationBarHidden = false
            }
            .navigationBarHidden(isNavigationBarHidden)
            
            // Debug view to show insets
            Color.clear
                .onAppear {
                    DispatchQueue.main.async {
                        print("Top inset: \(geometry.safeAreaInsets.top)")
                    }
                }
        }
        .navigationTitle(food.name)
    }
}

struct Food {
    let name: String
    let icon: String

    static func preview() -> [Food] {
        [
            Food(name: "Apple", icon: "🍎"),
            Food(name: "Banana", icon: "🍌"),
            Food(name: "Cherry", icon: "🍒"),
            Food(name: "Mango", icon: "🥭"),
            Food(name: "Kiwi", icon: "🥝"),
            Food(name: "Strawberry", icon: "🍓"),
            Food(name: "Grapes", icon: "🍇")
        ]
    }
}

#Preview {
    FoodList()
} 