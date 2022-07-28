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
            Image("yoga")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width)
                .ignoresSafeArea()
        }
    }
}

struct PlayView_Previews: PreviewProvider {
    static var previews: some View {
        PlayView()
    }
}
