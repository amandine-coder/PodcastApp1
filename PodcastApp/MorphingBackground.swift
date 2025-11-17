//
//  MorphingBackground.swift
//  PodcastApp
//
//  Created by Amandine on 10/11/25.
//

import SwiftUI

struct MorphingBackground: View {
    // Les 2 couleurs
       let colorA: Color  // Couleur des "blobs"
       let colorB: Color  // Couleur de fond
    // Interrupteur pour l'animation (OFF au début)
     @State private var bouge = false

    var body: some View {
        ZStack {
                   
                  
                   //FOND FIXE
                   colorB  // Remplit tout en bleu
                  // LES "BLOBS" QUI BOUGENT
                   colorA  // Couleur beige
                       .mask(  // On cache des parties
                           
                           // On empile 3 cercles
                           ZStack {
                               
                               // Cercle 1 : Grand
                               Circle()
                                   .frame(width: 300)
                                   .offset(
                                       x: bouge ? -50 : 50,    // Bouge de gauche à droite
                                       y: bouge ? -100 : 50     // Bouge de haut en bas
                                   )
                               
                               // Cercle 2 : Moyen
                               Circle()
                                   .frame(width: 250)
                                   .offset(
                                       x: bouge ? 100 : -50,
                                       y: bouge ? 80 : -70
                                   )
                               
                               // Cercle 3 : Petit
                               Circle()
                                   .frame(width: 200)
                                   .offset(
                                       x: bouge ? 0 : 80,
                                       y: bouge ? 120 : -100
                                   )
                           }
                           .blur(radius: 140)  // ✨ Effect blur = "morphing"
                       )
                       // ANIMATION : change la position en 3 secondes
                       .animation(
                           .easeInOut(duration: 5)
                            .repeatForever(autoreverses: true),
                           value: bouge
                       )
               }
               .ignoresSafeArea()  // Remplit tout l'écran
               
               // active l'animation
               .onAppear {
                   bouge = true  // Passe de false à true → ça bouge !
               }
           }
       }

       #Preview {
           MorphingBackground(
            colorA: Color(hex: "#F3E2C3"),
                colorB: Color(hex: "#0F2034")
           )
       }
