//
//  extension.swift
//  jacket
//
//  Created by Hritik Raj on 4/25/21.
//

import Foundation

extension Bool {
    var int: Int { self ? 1 : 0 }
}

extension Data {
    var hex: String { map{ String(format: "%02x", $0) }.joined() }
}
