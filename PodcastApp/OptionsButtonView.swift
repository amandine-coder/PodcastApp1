//
//  OptionsButtonView.swift
//  PodcastApp
//
//  Created by Amandine on 10/11/25.
//

import SwiftUI

struct OptionsButtonView: View {
    var body: some View {
        HStack {
            Spacer()
            Circle().fill(.white.opacity(0.15))
                .frame(width: 40, height: 40)
                .overlay(Image(systemName: "ellipsis").foregroundColor(.white))
                .padding(.trailing)
        }
    }
}
