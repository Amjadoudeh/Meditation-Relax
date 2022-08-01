import SwiftUI

struct PlayView: View {
    var meditationVM: MeditationViewModel
    var isPreview: Bool = false
    @State private var value: Double = 0.0
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            // MARK: Background Image
            Image(meditationVM.meditation.image)
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width)
                .ignoresSafeArea()
            
            // MARK: Blur view
            Rectangle()
                .background(.ultraThinMaterial)
                .opacity(0.25)
                .ignoresSafeArea()
            
            
            // MARK: Dismiss Button
            VStack(spacing: 32) {
                HStack{
                    Spacer()
                    
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 36))
                        
                    }
                }
                .padding(20)
                .foregroundColor(.white)
                
                // MARK: Title
                Text(meditationVM.meditation.title)
                    .font(.title)
                    .foregroundColor(.white)
                
                Spacer()
                
                VStack(spacing: 10) {
                    // MARK: Playback timeline
                    Slider(value: $value, in: 0...60)
                        .accentColor(.white)
                    
                    // MARK: Playback time
                    HStack {
                        Text("0:00")
                        Spacer()
                        Text("1:00")
                    }
                    .foregroundColor(.white)
                    .font(.caption)
                    
                    HStack{
                        // MARK: Repeat Button
                        PlayBackControlButton(systemName: "repeat") {
                            
                        }
                        Spacer()
                        // MARK: Backward Button
                        PlayBackControlButton(systemName: "gobackward.10") {
                            
                        }
                        Spacer()
                        // MARK: play Button
                        PlayBackControlButton(systemName: "play.circle.fill",fontSize: 44) {
                            
                        }
                        Spacer()
                        // MARK: Forward Button
                        PlayBackControlButton(systemName: "goforward.10") {
                            
                        }
                        Spacer()
                        // MARK: Stop Button
                        PlayBackControlButton(systemName: "stop.fill") {
                            
                        }
                    }
                }
                .padding(20)
            }
        }
        .onAppear{
            AudioManager.shared.startPlayer(track: meditationVM.meditation.track, isPreview: isPreview)
        }
    }
    
    struct PlayView_Previews: PreviewProvider {
        static let meditationVM = MeditationViewModel(meditation: Meditation.data)
        static var previews: some View {
            PlayView(meditationVM: meditationVM, isPreview: true)
        }
    }
}
