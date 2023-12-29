//
//  XCTestCase+MemoryLeakTracking.swift
//
//
//  Created by Mario Elorza on 27-12-23.
//

import XCTest

extension XCTestCase {
    func trackForMemoryLeaks(_ instance: AnyObject, file: StaticString = #filePath, line: UInt = #line) {
        addTeardownBlock { [weak instance] in
            XCTAssertNil(instance, "Instance should have been deallocated. Potencial memory leak.", file: file, line: line)
        }
    }
}
