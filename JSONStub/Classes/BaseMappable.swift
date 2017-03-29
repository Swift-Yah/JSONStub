//
//  BaseMappable.swift
//  NuChargebackTests
//
//  Created by Rafael Ferreira on 10/5/16.
//  Copyright © 2016 Swift Yah. All rights reserved.
//

import ObjectMapper

public extension BaseMappable {
    init?(fromFileName file: String) {
        guard let json = file.fileDictionary() else { return nil }

        self.init(JSON: json)
    }

    init?(fromStub stub: FileStub) {
        self.init(fromFileName: stub.fileName)
    }

    var asData: Data {
        guard let json = toJSONString(), let data = json.data(using: .utf8), json != "{}" else { return Data() }

        return data
    }
}
