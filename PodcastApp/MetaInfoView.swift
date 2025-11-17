//
//  MetaInfoView.swift
//  PodcastApp
//
//  Created by Amandine on 10/11/25.
//
import SwiftUI

struct MetaInfoView: View {
    let dateText: String
    let show: String
    let title: String

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(dateText).font(.caption).foregroundColor(.white.opacity(0.7))
            Text(show).font(.title3).bold().foregroundColor(.white)
            Text(title).foregroundColor(.white.opacity(0.9))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal)
    }
}

