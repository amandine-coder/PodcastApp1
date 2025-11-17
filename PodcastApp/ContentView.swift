//
//  ContentView.swift
//  PodcastApp
//
//  Created by Amandine on 10/11/25.
//

import SwiftUI


struct ContentView: View {
        let dateText = "MAY 15"
        let show = "BLOOD RELATIVES"
        let title = "Episode 1"
        let duration: Double = 26 * 60

        
        @State private var position: Double = 15 * 60 + 16
        @State private var isPlaying = false
        @State private var speed: Double = 1.0
        @State private var volume: Double = 0.35
        @State private var animateGradient = false
        private func seek(_ d: Double) { position = min(duration, max(0, position + d)) }

    var body: some View {
        ZStack {
                        MorphingBackground(
                            colorA: Color(hex: "#F3E2C3"),
                            colorB: Color(hex: "#0F2034")
                        )
            
                    VStack(spacing: 16) {

                        // Glass effect 
                        VStack(spacing: 18) {
                            ArtworkCardView(imageName: "image")    // l’image reste en haut, arrondie
                                            HeaderSectionView(dateText: dateText, show: show, title: title)

                                            ProgressSectionView(position: $position, duration: duration)

                                            TransportBarView(
                                                isPlaying: $isPlaying,
                                                speed: $speed,
                                                onBack15: { seek(-15) },
                                                onFwd30:  { seek(30) }
                                            ).padding(.top, 30)

                                            VolumeBarView(volume: $volume)          
                                                .padding(.top, 30)

                                            BottomBarView()
                                            Spacer(minLength: 12)
                            
                                        }
                                        .foregroundColor(.white)
                        
                                    }
                                    .onAppear { animateGradient = true }              
                }
            }
        }
#Preview {
    ContentView()
}
