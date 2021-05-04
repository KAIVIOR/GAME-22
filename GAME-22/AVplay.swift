

import Foundation
import UIKit
import AVFoundation
extension AVPlayer {
    static var bgQueuePlayer = AVQueuePlayer()

    static var bgPlayerLooper: AVPlayerLooper!

    static func setupBgMusic() {
    guard let url = Bundle.main.url(forResource: "music", withExtension:
    "mp3") else { fatalError("Failed to find sound file.") }
    let item = AVPlayerItem(url: url)
    bgPlayerLooper = AVPlayerLooper(player: bgQueuePlayer, templateItem: item)
    }
static let sharedDingPlayer: AVPlayer = {
    guard let url = Bundle.main.url(forResource: "ding", withExtension:
                                        "wav") else { fatalError("Failed to find sound file.") }
    return AVPlayer(url: url)
    }()

    static let sharedSpinPlayer: AVPlayer = {
        guard let url = Bundle.main.url(forResource: "spin", withExtension:
                                            "mp3") else { fatalError("Failed to find sound file.") }
        return AVPlayer(url: url)
    }()

func playFromStart() {
    seek(to: .zero)
    play()
    }
}
