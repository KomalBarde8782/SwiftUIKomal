//
//  COBrandHubViewUITests.swift
//  SwiftDemoNew
//
//  Created by Komal Markande on 19/07/25.
//


import XCTest

final class COBrandHubViewUITests: XCTestCase {

    let app = XCUIApplication()

    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }

    func testBonusPointsExists() {
        let bonusPoints = app.staticTexts["bonusPoints"]
        XCTAssertTrue(bonusPoints.exists, "Bonus points label should be visible")
    }

    func testBonusOfferTextExists() {
        let offerText = app.staticTexts["bonusOffer"]
        XCTAssertTrue(offerText.exists, "Bonus offer text should exist")
    }

    func testRewardTitleExists() {
        let rewardText = app.staticTexts["rewardTitle"]
        XCTAssertTrue(rewardText.exists, "Reward title should be visible")
    }

    func testTryAgainButtonExists() {
        let tryAgainButton = app.buttons["tvTryAgain"]
        XCTAssertTrue(tryAgainButton.exists, "Try Again button should be present")
    }

    func testTryAgainButtonTap() {
        let tryAgainButton = app.buttons["tvTryAgain"]
        XCTAssertTrue(tryAgainButton.exists)
        tryAgainButton.tap()
        // Insert assertion here if button triggers navigation or state change
        // Example:
        // let confirmationText = app.staticTexts["retryMessage"]
        // XCTAssertTrue(confirmationText.waitForExistence(timeout: 2))
    }
    
    func testBonusPointsViewElementsExist() throws {
           // Wait for the view to load
           let bonusPointsText = app.staticTexts["bonusPoints"]
           let bonusOfferText = app.staticTexts["bonusOffer"]
           let rewardTitleText = app.staticTexts["rewardTitle"]

           // Assert that each UI element exists
           XCTAssertTrue(bonusPointsText.waitForExistence(timeout: 2), "Bonus points text does not exist")
           XCTAssertTrue(bonusOfferText.exists, "Bonus offer text does not exist")
           XCTAssertTrue(rewardTitleText.exists, "Reward title text does not exist")

           // Assert the values (optional)
           XCTAssertEqual(bonusPointsText.label, "25,000")
           XCTAssertEqual(bonusOfferText.label, "ONLINE BONUS POINTS OFFER")
           XCTAssertEqual(rewardTitleText.label, "A sea of rewards")
       }
}
