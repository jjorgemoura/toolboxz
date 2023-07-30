extension Array {
    var isNotEmpty: Bool {
        return !self.isEmpty
    }

    func isIndexValid(_ index: Int) -> Bool {
        return self.startIndex <= index && index < self.endIndex
    }
}
