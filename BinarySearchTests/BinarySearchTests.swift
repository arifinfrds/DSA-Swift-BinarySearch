//
//  BinarySearchTests.swift
//  BinarySearchTests
//
//  Created by arifinfrds.engineer on 16/12/22.
//

import XCTest
@testable import BinarySearch

struct Program {
    func binarySearch(in array: [Int], target: Int) -> Int? {
        
        for number in array where number == target {
            return number
        }
        
        return nil
    }
}

final class BinarySearchTests: XCTestCase {
    
    func test_search_shouldReturnsNilWhenArrayIsEmpty() {
        let emptyArray = [Int]()
        let sut = Program()
        
        let result = sut.binarySearch(in: emptyArray, target: 7)
        
        XCTAssertNil(result)
    }
    
    func test_search_shouldReturnsNilWhenNotFound() {
        let sample = [1]
        let sut = Program()
        
        let result = sut.binarySearch(in: sample, target: 7)
        
        XCTAssertNil(result)
    }
    
    func test_search_shouldReturnsFoundNumberWhenFoundNumberOnSingleArrayItem() {
        let sample = [7]
        let sut = Program()
        
        let result = sut.binarySearch(in: sample, target: 7)
        
        XCTAssertEqual([result], sample)
    }
    
    func test_search_shouldReturnsFoundNumberWhenFoundNumberOnMoreThanOneArrayItem() {
        let sample = [1, 7, 3]
        let sut = Program()
        
        let result = sut.binarySearch(in: sample, target: 7)
        
        XCTAssertEqual(result, 7)
    }

}
