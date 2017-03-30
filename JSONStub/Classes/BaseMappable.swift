//
//  BaseMappable.swift
//  NuChargebackTests
//
//  Created by Rafael Ferreira on 10/5/16.
//  Copyright © 2016 Swift Yah. All rights reserved.
//

import struct Foundation.Data
import protocol ObjectMapper.BaseMappable

public extension BaseMappable {
    var asData: Data {
        guard let json = toJSONString(), let data = json.data(using: .utf8), json != "{}" else { return Data() }

        return data
    }
}
