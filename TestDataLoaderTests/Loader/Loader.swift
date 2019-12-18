//
//  Loader.swift
//  TestDataLoaderTests
//
//  Created by HANYU, Koji on 2019/12/18.
//  Copyright © 2019 gaussbeam. All rights reserved.
//

import Foundation

protocol Loader {
    associatedtype DataType

    var bundle: Bundle { get }
    func loadData(resourceName: String) -> Data
    func load(resourceName: String) -> DataType
    func convert(data: Data) -> DataType
}

extension Loader {
    var bundle: Bundle {
        return Bundle(identifier: "org.gaussbeam.TestDataLoaderTests")!
    }

    func loadData(resourceName: String) -> Data {
        let path = bundle.path(forResource: resourceName, ofType: "json")!
        let url = URL(fileURLWithPath: path)
        return try! Data(contentsOf: url)
    }

    func load(resourceName: String) -> DataType {
        let data = loadData(resourceName: resourceName)
        return convert(data: data)
    }
}
