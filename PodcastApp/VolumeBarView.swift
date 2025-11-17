//
//  VolumeBarView.swift
//  PodcastApp
//
//  Created by Amandine on 10/11/25.
//
import SwiftUI

struct VolumeBarView: View {
    @Binding var volume: Double

    var body: some View {
        HStack {
            Image(systemName: "speaker.fill")
            Slider(value: $volume, in: 0...1)
            Image(systemName: "speaker.wave.3.fill")
        }
        .foregroundColor(.white)
        .padding(.horizontal)
        .padding(.top, 30)
    }
}

