import SwiftUI

@main
struct MeditationRelaxApp : App {
    var body: some Scene {
        WindowGroup {
            MeditationView(meditationVM: MeditationViewModel(meditation: Meditation.data))
        }
    }
}
