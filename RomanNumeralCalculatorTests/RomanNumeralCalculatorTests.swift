//
//  RomanNumeralCalculatorTests.swift
//  RomanNumeralCalculatorTests
//
//  Created by iOS on 03/05/17.
//  Copyright © 2017 buddybuild. All rights reserved.
//

import XCTest
@testable import RomanNumeralCalculator

class RomanNumeralCalculatorTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testToRoman() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(toRoman(0), "")
        XCTAssertEqual(toRoman(1), "I")
        XCTAssertEqual(toRoman(4), "IV")
        XCTAssertEqual(toRoman(5), "V")
        XCTAssertEqual(toRoman(9), "IX")
        XCTAssertEqual(toRoman(10), "X")
        XCTAssertEqual(toRoman(40), "XL")
        XCTAssertEqual(toRoman(50), "L")
        XCTAssertEqual(toRoman(90), "XC")
        XCTAssertEqual(toRoman(100), "C")
        XCTAssertEqual(toRoman(400), "CD")
        XCTAssertEqual(toRoman(500), "D")
        XCTAssertEqual(toRoman(900), "CM")
        XCTAssertEqual(toRoman(1000), "M")

        XCTAssertEqual(toRoman(-1), "-I")
        XCTAssertEqual(toRoman(-4), "-IV")
        XCTAssertEqual(toRoman(-5), "-V")
        XCTAssertEqual(toRoman(-9), "-IX")
        XCTAssertEqual(toRoman(-10), "-X")
        XCTAssertEqual(toRoman(-40), "-XL")
        XCTAssertEqual(toRoman(-50), "-L")
        XCTAssertEqual(toRoman(-90), "-XC")
        XCTAssertEqual(toRoman(-100), "-C")
        XCTAssertEqual(toRoman(-400), "-CD")
        XCTAssertEqual(toRoman(-500), "-D")
        XCTAssertEqual(toRoman(-900), "-CM")
        XCTAssertEqual(toRoman(-1000), "-M")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
