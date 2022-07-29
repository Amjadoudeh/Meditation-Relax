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
    }
    
    struct PlayView_Previews: PreviewProvider {
        static var previews: some View {
            PlayView()
        }
    }
}
