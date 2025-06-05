//
//  SwiftUIKitApp.swift
//  SwiftUIKit
//
//  Created by Lasha Efremidze on 6/4/25.
//

import SwiftUI
import SwiftUIKit

@main
struct SwiftUIKitApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
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
                .padding()
            }
            .navigationTitle("SwiftUIKit Demo")
        }
    }
} 
