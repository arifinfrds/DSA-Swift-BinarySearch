//
//  BinarySearchTests.swift
//  BinarySearchTests
//
//  Created by arifinfrds.engineer on 16/12/22.
//

import XCTest
@testable import BinarySearch

struct Program {
    func search(in array: [Int], target: Int) -> Int? {
        return nil
    }
}

final class BinarySearchTests: XCTestCase {
    
    func test_search_shouldReturnsNilWhenArrayIsEmpty() {
        let emptyArray = [Int]()
        let sut = Program()
        
        let result = sut.search(in: emptyArray, target: 7)
        
        XCTAssertNil(result)
    }
    
    func test_search_shouldReturnsNilWhenNotFound() {
        let sample = [1]
        let sut = Program()
        
        let result = sut.search(in: sample, target: 7)
        
        XCTAssertNil(result)
    }

}
