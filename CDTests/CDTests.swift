//
//  CDTests.swift
//  CDTests
//
//  Created by Srikanth Kyatham on 1/20/25.
//

import XCTest


@testable import CD

final class StructSetTests: XCTestCase {
    var structSet: StructSet<Int>!

    override func setUp() {
        super.setUp()
        structSet = StructSet()
    }

    override func tearDown() {
        structSet = nil
        super.tearDown()
    }

    func testEmptyArray() {
        XCTAssertEqual(structSet.elements, [])
    }

    func testAddElement() {
        structSet.addElement(1)
        XCTAssertEqual(structSet.elements, [1])
    }

    func testAddElementsSort() {
        structSet.addElements([1, 6, 4])
        XCTAssertEqual(structSet.elements, [1, 4, 6])
    }

    func testDuplicates() {
        structSet.addElement(9)
        structSet.addElement(9)
        XCTAssertEqual(structSet.elements, [9])
    }

    func testRemoveElementValue() {
        structSet.addElements([1, 6, 4])
        structSet.removeValue(6)
        XCTAssertEqual(structSet.elements, [1, 4])
    }

    func testRemoveElementAt() {
        structSet.addElements([1, 6, 4])
        structSet.removeValueAt(2)
        XCTAssertEqual(structSet.elements, [1, 4])
    }

    func testMaxEle() {
        structSet.addElements([1, 6, 4])
        let maxElement = structSet.maxArrayEle()
        XCTAssertEqual(maxElement, 6)
    }

    func testMinEle() {
        structSet.addElements([1, 6, 4])
        let minElement = structSet.minArrayEle()
        XCTAssertEqual(minElement, 1)
    }
}

