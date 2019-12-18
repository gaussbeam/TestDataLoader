//
//  JsonLoader.swift
//  TestDataLoaderTests
//
//  Created by HANYU, Koji on 2019/12/18.
//  Copyright © 2019 gaussbeam. All rights reserved.
//

import Foundation

struct JsonLoader: Loader {
    typealias DataType = [String: Any]

    func convert(data: Data) -> DataType {
        return try! JSONSerialization.jsonObject(with: data, options: []) as! DataType
    }
}
