//
//  Mappable.swift
//  Pods
//
//  Created by Rafael Ferreira on 3/30/17.
//
//

import protocol ObjectMapper.Mappable

public extension Mappable {
    init?(fromFileName file: String) {
        guard let json = file.fileDictionary() else { return nil }

        self.init(JSON: json)
    }

    init?(fromStub stub: FileStub) {
        self.init(fromFileName: stub.fileName)
    }
}
