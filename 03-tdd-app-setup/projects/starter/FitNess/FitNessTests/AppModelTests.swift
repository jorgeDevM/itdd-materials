//
//  AppModelTests.swift
//  FitNessTests
//
//  Created by Jorge on 7/21/21.
//  Copyright © 2021 Razeware. All rights reserved.
//

import XCTest
import FitNess

class AppModelTests: XCTestCase {
  
  var sut: AppModel!

  override func setUp() {
    super.setUp()
    sut = AppModel()
  }
  
  override func tearDown() {
    
  }
  
  func testAppModel_whenInitialized_isInNotStartedState() {
    let initialState = sut.appState
    XCTAssertEqual(initialState, AppState.notStarted)
  }
  
  func testAppModel_whenStarted_isInInProgressState() {
    // 2 when started
    sut.start()

    // 3 then it is in inProgress
    let observedState = sut.appState
    XCTAssertEqual(observedState, AppState.inProgress)
  }
}
