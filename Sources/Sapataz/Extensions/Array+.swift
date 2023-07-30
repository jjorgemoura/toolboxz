extension Array {
    var isNotEmpty: Bool {
        !isEmpty
    }

    func isIndexValid(_ index: Int) -> Bool {
        startIndex <= index && index < endIndex
    }
}
