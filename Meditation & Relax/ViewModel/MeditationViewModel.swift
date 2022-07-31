import Foundation

final class MeditationViewModel: ObservableObject {
    private(set) var meditation: Meditation
    
    init(meditation: Meditation) {
        self.meditation = meditation
    }
}
struct Meditation {
    let id = UUID()
    let title: String
    let description: String
    let duration: TimeInterval
    let track: String
    let image: String
    
    static let data = Meditation(title: "1 Minute of Relx and Meditation", description: "Clear your mind and take a moment for your self, allow your soul to fly in the space!", duration: 70, track: "meditation1", image: "yoga")
}
