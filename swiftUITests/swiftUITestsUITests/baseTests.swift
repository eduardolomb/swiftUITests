//
//  baseTests.swift
//  swiftUITestsUITests
//
//  Created by Eduardo Lombardi on 24/05/2018.
//  Copyright © 2018 Eduardo Lombardi. All rights reserved.
//

import XCTest


class BaseTest: XCTestCase {
    private let app = XCUIApplication()
    
    override func setUp() {
        continueAfterFailure = false
        app.launch()
    }
    
    override func tearDown() {
        let screenshot = XCUIScreen.main.screenshot()
        let fullScreenshotAttachment = XCTAttachment(screenshot: screenshot)
        fullScreenshotAttachment.lifetime = .deleteOnSuccess
        add(fullScreenshotAttachment)
        app.terminate()
    }
}
