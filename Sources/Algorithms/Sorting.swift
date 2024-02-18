// The Swift Programming Language
// https://docs.swift.org/swift-book


public struct InsertionSort {
    public static func sort(_ array: inout [some Comparable]) {
        guard array.count > 1 else { return }
        for i in 1..<array.count {
            var j = i
            while (j > 0 && array[j - 1] > array[j]) {
                array.swapAt(j - 1, j)
                j -= 1
            }
        }
    }
}

public func isSorted(_ array: [some Comparable]) -> Bool {
    guard array.count > 1 else { return true }
    for idx in 0..<(array.count - 1) {
        if (array[idx] > array[idx + 1]) { return false }
    }
    return true
}
