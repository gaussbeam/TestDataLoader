//
//  CouponTests.swift
//  TestDataLoaderTests
//
//  Created by HANYU, Koji on 2019/12/18.
//  Copyright © 2019 gaussbeam. All rights reserved.
//

@testable import TestDataLoader
import XCTest

class CouponTests: XCTestCase {

    override func setUp() {}

    override func tearDown() {}

    func testIsUsed() {
        let loader = DecodableObjectLoader<Coupon>()
        
        XCTContext.runActivity(named: "usedDate==nilの場合，isUsedはfalse") { _ in
            let c = loader.load(resourceName: "unusedCoupon")
            XCTAssertFalse(c.isUsed)
        }

        XCTContext.runActivity(named: "usedDate!=nilの場合，isUsedはtrue") { _ in
            let c = loader.load(resourceName: "usedCoupon")
            XCTAssertTrue(c.isUsed)
        }
    }
}
