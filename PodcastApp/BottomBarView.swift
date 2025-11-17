//
//  BottomBarView.swift
//  PodcastApp
//
//  Created by Amandine on 10/11/25.
//
import SwiftUI

struct BottomBarView: View {
    var body: some View {
        HStack(spacing: 48) {
            Image(systemName: "airplayaudio")
            Image(systemName: "list.bullet")
        }
        .foregroundColor(.white.opacity(0.9))
        .font(.title3)
        .padding(.top, 30)
    }
}

