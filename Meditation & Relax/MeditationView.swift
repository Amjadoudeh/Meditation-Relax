import SwiftUI

struct MeditationView: View {
    var body: some View {
        Image("yoga")
            .resizable()
            .scaledToFill()
            .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MeditationView()
    }
}
