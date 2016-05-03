//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by danny.p on 2016. 5. 3..
//  Copyright © 2016년 dhen-p. All rights reserved.
//

import UIKit
import XCTest

class FoodTrackerTests: XCTestCase{
    
    // MARK: FoodTracker Tests
    
    // Tests to confirm that the Meal initializer returns wwhen no name or a negative rating is provided.
    func testMealInitialization() {
        // Success case.
        let potentialItem = Meal(name: "Newest meal", photo: nil, rating:5)
        XCTAssertNotNil(potentialItem)
        
        // Failure cases.
        let noName = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName)
        
        let badRating = Meal(name: "Really bad rating", photo: nil, rating: -1)
        XCTAssertNil(badRating)
    }
    
}
