//
//  TransportBarView.swift
//  PodcastApp
//
//  Created by Amandine on 10/11/25.
//
import SwiftUI

struct TransportBarView: View {
    @Binding var isPlaying: Bool
    @Binding var speed: Double
    var onBack15: () -> Void
    var onFwd30:  () -> Void

    // cycles: 0.75x → 1x → 1.25x → 1.5x → 2x → 0.75x ...
    private let speeds: [Double] = [0.75, 1.0, 1.25, 1.5, 2.0]

    private func nextSpeed() {
        if let i = speeds.firstIndex(of: speed) {
            speed = speeds[(i + 1) % speeds.count]
        } else {
            speed = 1.0
        }
    }

    var body: some View {
        HStack {
            Button(action: { nextSpeed() }) {
                Text(String(format: "%.0fx", speed))
                    .font(.headline)
            }
            .foregroundColor(.white)

            Spacer()

            Button(action: onBack15) {
                Image(systemName: "gobackward.15").font(.title2)
            }

            Spacer()

            Button(action: { isPlaying.toggle() }) {
                Image(systemName: isPlaying ? "pause.fill" : "play.fill")
                    .font(.system(size: 28, weight: .bold))
            }

            Spacer()

            Button(action: onFwd30) {
                Image(systemName: "goforward.30").font(.title2)
            }

            Spacer()

            Image(systemName: "moon.zzz")
        }
        .foregroundColor(.white)
        .padding(.horizontal, 34)
    }
}

