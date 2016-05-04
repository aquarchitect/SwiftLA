//
//  Leap.swift
//  SwiftLA
//
//  Created by Hai Nguyen on 3/23/16.
//
//

import XCTest

class LeapTest : XCTestCase {

	func testVanillaLeapYear() {
        let year = Year(calendarYear: 1996)
        XCTAssertTrue(year.isLeapYear)
	}

	func testAnyOldYear() {
	  let year = Year(calendarYear: 1997)
	  XCTAssertFalse(year.isLeapYear)
	}

	func testCentury() {
	  let year = Year(calendarYear: 1900)
	  XCTAssertFalse(year.isLeapYear)
	}

	func testExceptionalCentury() {
	  let year = Year(calendarYear: 2400)
	  XCTAssertTrue(year.isLeapYear)
	}

    func testDoubtCases() {
        let year1 = Year(calendarYear: 2000)
        XCTAssertTrue(year1.isLeapYear)

        let year2 = Year(calendarYear: 0)
        XCTAssertTrue(year2.isLeapYear)

        let year3 = Year(calendarYear: 1800)
        XCTAssertFalse(year3.isLeapYear)

        let year4 = Year(calendarYear: -4)
        XCTAssertTrue(year4.isLeapYear)
    }
}