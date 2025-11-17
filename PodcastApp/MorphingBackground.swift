//
//  MorphingBackground.swift
//  PodcastApp
//
//  Created by Amandine on 10/11/25.
//

import SwiftUI

struct MorphingBackground: View {
   
       let colorA: Color  
       let colorB: Color 
     @State private var bouge = false

    var body: some View {
        ZStack {
                   
                  
                   
                   colorB  
                  
                   colorA 
                       .mask(  
                           
                           
                           ZStack {
                               
                               
                               Circle()
                                   .frame(width: 300)
                                   .offset(
                                       x: bouge ? -50 : 50,    
                                       y: bouge ? -100 : 50     
                                   )
                               
                               
                               Circle()
                                   .frame(width: 250)
                                   .offset(
                                       x: bouge ? 100 : -50,
                                       y: bouge ? 80 : -70
                                   )
                               
                               
                               Circle()
                                   .frame(width: 200)
                                   .offset(
                                       x: bouge ? 0 : 80,
                                       y: bouge ? 120 : -100
                                   )
                           }
                           .blur(radius: 140)  
                       )
                      
                       .animation(
                           .easeInOut(duration: 5)
                            .repeatForever(autoreverses: true),
                           value: bouge
                       )
               }
               .ignoresSafeArea()  
               
              
               .onAppear {
                   bouge = true  
               }
           }
       }

       #Preview {
           MorphingBackground(
            colorA: Color(hex: "#F3E2C3"),
                colorB: Color(hex: "#0F2034")
           )
       }
