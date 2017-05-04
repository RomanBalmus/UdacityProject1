//
//  RomanNumeralCalculatorUITests.swift
//  RomanNumeralCalculatorUITests
//
//  Created by iOS on 03/05/17.
//  Copyright © 2017 buddybuild. All rights reserved.
//

import XCTest

class RomanNumeralCalculatorUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        XCUIDevice.shared().orientation = .portrait
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAddOnePlusOne() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCUIDevice.shared().orientation = .faceUp
        XCUIDevice.shared().orientation = .faceUp
        
        let app = XCUIApplication()
        let iButton = app.buttons["I"]
        let calculatedLabel = app.staticTexts["calculated_value"]

        iButton.tap()
        app.buttons["+"].tap()
        iButton.tap()
        
        XCTAssertEqual(calculatedLabel.label, "II")
        
    }
    
    func testVPlusD() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCUIDevice.shared().orientation = .faceUp
        XCUIDevice.shared().orientation = .faceUp
        
        let app = XCUIApplication()
        let calculatedLabel = app.staticTexts["calculated_value"]

        app.buttons["Clear"].tap()
        app.buttons["V"].tap()
        app.buttons["+"].tap()
        app.buttons["D"].tap()
        XCTAssertEqual(calculatedLabel.label, "DV")

        
        
    }
    
}
