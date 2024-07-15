//
//  ModelsTests.swift
//  VincarTests
//
//  Created by Kevin Kelly on 7/14/24.
//

import XCTest
@testable import Vincar

final class ModelsTests: XCTestCase {

    func test_loadBaseExercises() {
        let base = Exercise.base
        XCTAssertEqual(base.count, 873)
        print(base.first ?? "none")
    }

}
