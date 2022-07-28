//
//  PlayView.swift
//  Meditation & Relax
//
//  Created by Amjad Oudeh on 28.07.22.
//

import SwiftUI

struct PlayView: View {
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
                    Button {
                        
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 36))
                            
                    }
                    Spacer()
                   
                }
                .padding(20)
                .foregroundColor(.white)
                
                // MARK: Title
                Text("1 Minute Relx and Meditation")
                    .font(.title)
                    .foregroundColor(.white)
                
                Spacer()
            }
        }
    }
}

struct PlayView_Previews: PreviewProvider {
    static var previews: some View {
        PlayView()
    }
}
