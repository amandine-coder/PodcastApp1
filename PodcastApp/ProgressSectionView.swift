//
//  ProgressSectionView.swift
//  PodcastApp
//
//  Created by Amandine on 10/11/25.
//
import SwiftUI

struct ProgressSectionView: View {
    @Binding var position: Double
    let duration: Double

    private func fmt(_ t: Double) -> String {
        let m = Int(t) / 60, s = Int(t) % 60
        return String(format: "%d:%02d", m, s)
    }

    var body: some View {
        VStack(spacing: 6) {
            Slider(value: $position, in: 0...duration)
                .tint(.white.opacity(0.9))
                .padding(.horizontal)
            HStack {
                Text(fmt(position))
                Spacer()
                Text("-" + fmt(max(0, duration - position)))
            }
            .font(.caption)
            .foregroundColor(.white.opacity(0.9))
            .padding(.horizontal)
        }
    }
}

