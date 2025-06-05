//
//  ExamplesApp.swift
//  Examples
//
//  Created by Lasha Efremidze on 6/4/25.
//

import SwiftUI
import SwiftUIKit

@main
struct ExamplesApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                Section("Components") {
                    NavigationLink {
                        FoodList()
                    } label: {
                        HStack {
                            Image(systemName: "list.bullet")
                                .foregroundColor(.blue)
                            Text("Food List")
                        }
                    }
                    
                    NavigationLink {
                        Text("Coming Soon")
                            .navigationTitle("More Components")
                    } label: {
                        HStack {
                            Image(systemName: "star.fill")
                                .foregroundColor(.blue)
                            Text("More Components")
                        }
                    }
                }
                
                Section("Examples") {
                    InfoCard(
                        title: "Welcome to SwiftUIKit",
                        description: "A collection of beautiful and reusable SwiftUI components.",
                        icon: "star.fill"
                    )
                    
                    PrimaryButton(title: "Get Started") {
                        print("Get Started tapped")
                    }
                    
                    Text("Custom Shadow Example")
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .customShadow(radius: 4)
                }
            }
            .navigationTitle("SwiftUIKit Demo")
        }
    }
}

#Preview {
    ContentView()
}
