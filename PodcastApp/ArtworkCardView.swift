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
            .scaledToFill()                 
            .frame(height: 340)             
            .clipped()                     
            .clipShape(RoundedRectangle(cornerRadius: 22)) 
            .shadow(radius: 10)
            .padding(.horizontal)
            .padding(.top, 24)              
    }
}

