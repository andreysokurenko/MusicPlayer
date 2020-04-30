//
//  CMTime + Extantion.swift
//  MusicPlayer
//
//  Created by Andrey on 27.04.2020.
//  Copyright © 2020 Andrey. All rights reserved.
//

import Foundation
import AVKit

extension CMTime {
    func toDisplayString() -> String {
        guard !CMTimeGetSeconds(self).isNaN else {return ""}
        let totalSecond = Int(CMTimeGetSeconds(self))
        let second = totalSecond % 60
        let minutes = totalSecond / 60
        let timerFormatString = String(format: "%02d:%02d", minutes, second)
        return timerFormatString
    }
}
