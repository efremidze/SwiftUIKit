import SwiftUI
import SwiftUIKit

struct FoodList: View {
    let foods = Food.preview()

    var body: some View {
        List(foods, id: \.name) { food in
            NavigationLink {
                FoodDetail(food: food)
//                    .navigationBarHidden(true)
//                    .toolbar(.hidden, for: .navigationBar)
            } label: {
                HStack {
                    Text(food.icon)
                    Text(food.name)
                }
            }
        }
        .navigationTitle("Foods")
    }
}

struct FoodDetail: View {
    var food: Food
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack(spacing: 20) {
                    Text(food.icon).font(.system(size: 80))
                    Text(food.name).font(.title)
                    
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
            .edgesIgnoringSafeArea(.all) // important
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
    NavigationStack {
        FoodList()
    }
}
