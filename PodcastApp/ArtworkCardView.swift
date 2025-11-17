//
//  ArtworkCardView.swift
//  PodcastApp
//
//  Created by Amandine on 10/11/25.
//
import SwiftUI

struct ArtworkCardView: View {
    let imageName: String

    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFill()                 // remplit sans bandes noires
            .frame(height: 340)             // hauteur contrôlée
            .clipped()                      // rogne proprement dans le cadre
            .clipShape(RoundedRectangle(cornerRadius: 22)) // coins arrondis
            .shadow(radius: 10)
            .padding(.horizontal)
            .padding(.top, 24)              // descend l’image sous l’encoche
    }
}

