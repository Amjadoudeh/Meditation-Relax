//
//  PlayView.swift
//  Meditation & Relax
//
//  Created by Amjad Oudeh on 28.07.22.
//

import SwiftUI

struct PlayView: View {
    @State private var value: Double = 0.0
    
    var body: some View {
        ZStack {
            // MARK: Background Image
            Image("yoga")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width)
                .ignoresSafeArea()
            
            // MARK: Dismiss Button
            VStack(spacing: 32) {
                HStack{
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 36))
                        
                    }
                }
                .padding(20)
                .foregroundColor(.white)
                
                // MARK: Title
                Text("1 Minute Relx and Meditation")
                    .font(.title)
                    .foregroundColor(.white)
                
                Spacer()
                
                VStack(spacing: 10) {
                    // MARK: Player timeline
                    Slider(value: $value, in: 0...60)
                        .accentColor(.white)
                }
                .padding(20)
            }
        }
    }
    
    struct PlayView_Previews: PreviewProvider {
        static var previews: some View {
            PlayView()
        }
    }
}
