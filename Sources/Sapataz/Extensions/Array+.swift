//
//  Array+.swift
//  sapataz-iOS
//
//  Created by Jorge Moura on 29/03/2019.
//

extension Array {

    var isNotEmpty: Bool {
        return !self.isEmpty
    }

    func isIndexValid(_ index: Int) -> Bool {
        return self.startIndex <= index && index < self.endIndex
    }
}
