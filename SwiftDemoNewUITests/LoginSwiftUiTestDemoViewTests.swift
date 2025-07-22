//
//  LoginViewUITests.swift
//  SwiftDemoNew
//
//  Created by Komal Markande on 19/07/25.
//


import XCTest

final class LoginSwiftUiTestDemoViewTests: XCTestCase {

    let app = XCUIApplication()

    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }

    func testUIElementsExist() {
        XCTAssertTrue(app.textFields["usernameField"].exists)
        XCTAssertTrue(app.secureTextFields["passwordField"].exists)
        XCTAssertTrue(app.buttons["loginButton"].exists)
    }

    func testSuccessfulLogin() {
        let username = app.textFields["usernameField"]
        let password = app.secureTextFields["passwordField"]
        let loginButton = app.buttons["loginButton"]

        username.tap()
        username.typeText("admin")

        password.tap()
        password.typeText("password")

        loginButton.tap()

        let welcomeText = app.staticTexts["Welcome, admin!"]
        XCTAssertTrue(welcomeText.waitForExistence(timeout: 3))
    }

    func testFailedLoginShowsAlert() {
        let username = app.textFields["usernameField"]
        let password = app.secureTextFields["passwordField"]
        let loginButton = app.buttons["loginButton"]

        username.tap()
        username.typeText("wrong")

        password.tap()
        password.typeText("user")

        loginButton.tap()

        let alert = app.alerts["Invalid Credentials"]
        XCTAssertTrue(alert.waitForExistence(timeout: 2))
        alert.buttons["OK"].tap()
    }
}
