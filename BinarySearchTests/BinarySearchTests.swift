//
//  BinarySearchTests.swift
//  BinarySearchTests
//
//  Created by arifinfrds.engineer on 16/12/22.
//

import XCTest
@testable import BinarySearch

// [1, 3, 7] // sorting
// while
// target is in the middle? return middle number
// if target < middleNumber, then maybe it is on the left side of middle number
// if target > middleNumber, then maybe it is on the right side of middle number

struct Program {
    func binarySearch(in array: [Int], target: Int) -> Int? {
        
        let sortedNumbers = array.sorted()
        var leftPointerIndex = 0
        var rightPointerIndex = sortedNumbers.count - 1
        
        while leftPointerIndex <= rightPointerIndex {
            
            let middleIndex = (leftPointerIndex + rightPointerIndex) / 2
            let middleNumber = sortedNumbers[middleIndex]
            
            if target == middleNumber {
                return middleNumber
            }
            if target < middleNumber {
                rightPointerIndex = middleIndex - 1
            }
            if target > middleNumber {
                leftPointerIndex = middleIndex + 1
            }
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
