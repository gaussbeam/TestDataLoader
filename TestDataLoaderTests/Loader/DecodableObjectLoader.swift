//
//  DecodableObjectLoader.swift
//  TestDataLoaderTests
//
//  Created by HANYU, Koji on 2019/12/18.
//  Copyright © 2019 gaussbeam. All rights reserved.
//

import Foundation

struct DecodableObjectLoader<T: Decodable>: Loader {
    typealias DataType = T

    func convert(data: Data) -> DataType {
        return try! JSONDecoder().decode(DataType.self, from: data)
    }
}
