//
//  LiveDemo___Week_03___Simple_IOS_AppUITestsLaunchTests.swift
//  LiveDemo - Week 03 - Simple IOS AppUITests
//
//  Created by Indrajeet Patwardhan on 9/5/23.
//

import XCTest

final class LiveDemo___Week_03___Simple_IOS_AppUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
