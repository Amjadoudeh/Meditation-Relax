import SwiftUI

struct MeditationView: View {
    var body: some View {
        Image("yoga")
            .resizable()
            .scaledToFill()
            .frame(height: UIScreen.main.bounds.height/3)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MeditationView()
    }
}
