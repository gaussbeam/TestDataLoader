//
//  Coupon.swift
//  TestDataLoader
//
//  Created by HANYU, Koji on 2019/12/18.
//  Copyright © 2019 gaussbeam. All rights reserved.
//

import Foundation

struct Coupon: Decodable {
    var id: Int
    var title: String
    var usedDate: Date?
    var isUsed: Bool {
        return usedDate != nil
    }
}
