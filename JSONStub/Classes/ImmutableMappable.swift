//
//  ImmutableMappable.swift
//  Pods
//
//  Created by Rafael Ferreira on 3/30/17.
//
//

import protocol ObjectMapper.ImmutableMappable

public extension ImmutableMappable {
    init?(fromFileName file: String) throws {
        guard let json = file.fileDictionary() else { return nil }

        try self.init(JSON: json)
    }

    init?(fromStub stub: FileStub) {
        do {
            try self.init(fromFileName: stub.fileName)
        } catch {
            return nil
        }
    }
}
