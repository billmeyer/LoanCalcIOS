//
//  LoanCalcUITests.swift
//  LoanCalcUITests
//
//  Created by Bill Meyer on 7/24/18.
//  Copyright © 2018 Bill Meyer. All rights reserved.
//

import XCTest

class LoanCalcUITests: XCTestCase {
    let app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        app.terminate()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        print(app.debugDescription)
        
        let tfLoanAmount = app.textFields["Loan Amount"]
        tfLoanAmount.tap()
        tfLoanAmount.typeText("25000")
        
        let tfInterest = app.textFields["Interest"]
        tfInterest.tap()
        tfInterest.typeText("3.42")

        let tfSalesTax = app.textFields["Sales Tax"]
        tfSalesTax.tap()
        tfSalesTax.typeText("8")

        let tfTerm = app.textFields["Term"]
        tfTerm.tap()
        tfTerm.typeText("60")

        let tfDownPayment = app.textFields["Down Payment"]
        tfDownPayment.tap()
        tfDownPayment.typeText("500")

        let tfTradeIn = app.textFields["Trade In"]
        tfTradeIn.tap()
        tfTradeIn.typeText("7500")
        
        let tfFees = app.textFields["Fees"]
        tfFees.tap()
        tfFees.typeText("300")
        
        let lblMonthlyPayment = app.staticTexts["lblMonthlyPayment"]
        XCTAssertEqual("$339.52", lblMonthlyPayment.label)
        
        let lblTotalPayments = app.staticTexts["lblTotalPayments"]
        XCTAssertEqual("$20,370.97", lblTotalPayments.label)
        
        let lblTotalInterest = app.staticTexts["lblTotalInterest"]
        XCTAssertEqual("$1,670.97", lblTotalInterest.label)
        
        let lblTotalCost = app.staticTexts["lblTotalCost"]
        XCTAssertEqual("$28,370.97", lblTotalCost.label)
    }
}
