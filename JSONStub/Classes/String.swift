//
//  String.swift
//  NuChargeback
//
//  Created by Rafael Ferreira on 10/5/16.
//  Copyright © 2016 Swift Yah. All rights reserved.
//

public extension String {
    func fileData() -> Data? {
        guard let path = filePath() else { return nil }

        let url = URL(fileURLWithPath: path)

        return try? Data(contentsOf: url)
    }

    func fileDictionary() -> [String: AnyObject]? {
        guard let data = fileData(),
            let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) else { return nil }

        return json as? [String: AnyObject]
    }

    func fileString() -> String {
        guard let data = fileData(), let json = String.init(data: data, encoding: .utf8) else { return "{}" }

        return json
    }

    func filePath() -> String? {
        guard splitAtDot.count == 2 else { return nil }

        return Bundle.main.path(forResource: splitAtDot.first, ofType: splitAtDot.last)
    }
}

// MARK: Utility functions

extension String {
    var splitAtDot: [String] {
        return splitBy(separator: ".")
    }

    func splitBy(separator: String) -> [String] {
        guard let character = separator.characters.first else { return [self] }

        return characters.split(separator: character).map({ String($0) })
    }
}

// MARK: Case functions

public extension String {
    var pascalCase: String {
        return first.uppercased() + last
    }
}

// MARK: Private functions

private extension String {
    var first: String {
        let item = characters.prefix(1)

        return String(item)
    }

    var last: String {
        let array = characters.dropFirst()

        return String(array)
    }
}
