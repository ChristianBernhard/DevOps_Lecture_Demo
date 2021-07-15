//
//  devopsTests.swift
//  devopsTests
//
//  Created by Bernhard, Christian on 01.05.21.
//

import XCTest
@testable import devops

class devopsTests: XCTestCase {
    var myMultiplicator: Multiplicator!
    
    // gets called before every Test
    override func setUp() {
        super.setUp()
        myMultiplicator = Multiplicator()
    }
    
    // gets called after every Test
    override func tearDown() {
        myMultiplicator = nil
        super.tearDown()
    }
    
    
    // MARK: - Unit Tests
    func test_multiplyTwoNegativeEqualsPositive() {
        //given
        let firstNegativeNumber: Float = -1
        let secondNegativeNumber: Float = -2
        //when
        let result = myMultiplicator.calculateMultiplication(firstNumber: firstNegativeNumber, secondNumber: secondNegativeNumber)
        //then
        XCTAssertTrue(result > 0)
    }
    
    func test_multiplyFirstNegativeEqualsNegative() {
        //given
        let firstNegativeNumber: Float = -1
        let secondPositiveNumber: Float = 2
        //when
        let result = myMultiplicator.calculateMultiplication(firstNumber: firstNegativeNumber, secondNumber: secondPositiveNumber)
        //then
        XCTAssertTrue(result < 0)
    }
    
    func test_multiplySecondNegativeEqualsNegative() {
        //given
        let firstPositiveNumber: Float = 1
        let secondNegativeNumber: Float = -2
        //when
        let result = myMultiplicator.calculateMultiplication(firstNumber: firstPositiveNumber, secondNumber: secondNegativeNumber)
        //then
        XCTAssertTrue(result < 0)
    }
    
    func test_multiplication() {
        //given
        let firstNumber: Float = 1.1
        let secondNumber: Float = 3.3
        //when
        let result = myMultiplicator.calculateMultiplication(firstNumber: firstNumber, secondNumber: secondNumber)
        //then
        XCTAssertEqual(result, 3.63)
    }

}
