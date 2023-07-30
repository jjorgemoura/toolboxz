import Foundation

func ordinal(number: Int) -> String {
    let formatter = NumberFormatter()
    formatter.numberStyle = .ordinal

    return formatter.string(for: number) ?? ""
}
