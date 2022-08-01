import SwiftUI

struct MeditationView: View {
    @StateObject var meditationVM: MeditationViewModel
    @State private var showPlayer = false
    var body: some View {
        VStack(spacing: 0) {
            // MARK: Image:
            Image(meditationVM.meditation.image)
                .resizable()
                .scaledToFill()
            .frame(height: UIScreen.main.bounds.height/3)
            .offset(y: 40)
            
            // MARK: Meditation Details:
            ZStack {
                // MARK: Background
                Color(red: 24/355, green: 23/255, blue: 22/255  )
                    .frame(height: UIScreen.main.bounds.height * 2/3)
            
                // MARK: Type and Duration:
                VStack(alignment: .leading, spacing: 24) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Music")
                        
                        Text(DateComponentsFormatter.abbreviated.string(from: meditationVM.meditation.duration) ?? meditationVM.meditation.duration.formatted() + "S")
                    }
                    
                    .font(.subheadline)
                    .textCase(.uppercase)
                    .opacity(0.7)
                 
                    Button {
                        showPlayer = true
                    } label: {
                        Label("Play",systemImage: "play.fill")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding(.vertical,10)
                            .frame(maxWidth: .infinity)
                            .background(.white)
                            .cornerRadius(20)
                        
                    }

                    
                // MARK: Tilte
                    Text(meditationVM.meditation.title)
                        .font(.title)
                    
                
                // MARK: Description
                    Text(meditationVM.meditation.description)
                    
                    Spacer()
                }
                .foregroundColor(.white)
                .padding(20)
            }
        }
        .ignoresSafeArea()
        .fullScreenCover(isPresented: $showPlayer) {
            PlayView(meditationVM: meditationVM)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static let meditationVM = MeditationViewModel(meditation: Meditation.data)
    
    static var previews: some View {
        MeditationView(meditationVM: meditationVM)
            .environmentObject(AudioManager())
    }
}
