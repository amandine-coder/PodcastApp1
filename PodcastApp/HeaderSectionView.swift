//
//  HeaderSectionView.swift
//  PodcastApp
//
//  Created by Amandine on 10/11/25.
//
import SwiftUI

struct HeaderSectionView: View {
    let dateText: String
    let show: String
    let title: String

    var body: some View {
        HStack(alignment: .top) {
            // Texte à gauche
            VStack(alignment: .leading, spacing: 6) {
                Text(dateText).font(.caption).foregroundColor(.white.opacity(0.7))
                Text(show).font(.title3).bold().foregroundColor(.white)
                Text(title).foregroundColor(.white.opacity(0.9))
            }

            Spacer(minLength: 12)

            // Bouton "…" à droite
            Circle()
                .fill(.white.opacity(0.15))
                .frame(width: 40, height: 40)
                .overlay(Image(systemName: "ellipsis").foregroundColor(.white))
        }
        .padding(.horizontal)
    }
}

