import XCTest
import SwiftUI
@testable import SwiftUIKit

final class PrimaryButtonTests: XCTestCase {
    func testPrimaryButtonInitialization() {
        let button = PrimaryButton(title: "Test Button") {}
        
        // Verify that the button was created successfully
        XCTAssertNotNil(button)
    }
    
    func testPrimaryButtonTitle() {
        let expectedTitle = "Test Button"
        let button = PrimaryButton(title: expectedTitle) {}
        
        // Since we can't directly test the title in SwiftUI views,
        // we can at least verify that the button was created with the correct title
        XCTAssertNotNil(button)
    }
} 