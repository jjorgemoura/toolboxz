//
//  TimeInterval+.swift
//  sapataz-iOS
//
//  Created by Jorge Moura on 29/03/2019.
//

import Foundation

extension TimeInterval {

    func asPrettyFormattedDuration() -> String {
        let totalSeconds: Int = Int(self)
        let timeComponents: (Int, Int, Int) = (totalSeconds / 3600, (totalSeconds % 3600) / 60, (totalSeconds % 3600) % 60 )

        if timeComponents.0 == 0 {
            return String(format: "%d:%02d", timeComponents.1, timeComponents.2)
        } else {
            return String(format: "%d:%02d:%02d", timeComponents.0, timeComponents.1, timeComponents.2)
        }
    }
}
