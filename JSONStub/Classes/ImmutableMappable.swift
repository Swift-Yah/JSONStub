//
//  ImmutableMappable.swift
//  Pods
//
//  Created by Rafael Ferreira on 3/30/17.
//
//

import protocol ObjectMapper.ImmutableMappable

public extension ImmutableMappable {
    init?(fromFileName file: String) {
        guard let json = file.fileDictionary() else { return nil }

        do {
            try self.init(JSON: json)
        } catch {
            return nil
        }
    }
}
