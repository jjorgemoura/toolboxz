//
//  Copyright © 2021  ___ORGANIZATIONNAME___ . All rights reserved.

import Foundation

func ordinal(number: Int) -> String {
    let formatter = NumberFormatter()
    formatter.numberStyle = .ordinal

    return formatter.string(for: number) ?? ""
}
