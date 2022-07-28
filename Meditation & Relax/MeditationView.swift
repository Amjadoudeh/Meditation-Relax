import SwiftUI

struct MeditationView: View {
    var body: some View {
        VStack(spacing: 0) {
            // MARK: Image:
            Image("yoga")
                .resizable()
                .scaledToFill()
            .frame(height: UIScreen.main.bounds.height/3)
            
            // MARK: Meditation Details:
            ZStack {
                // MARK: Background
                Color(red: 24/355, green: 23/255, blue: 22/255  )
                    .frame(height: UIScreen.main.bounds.height * 2/3)
            
                // MARK: Type and Duration:
                VStack(alignment: .leading, spacing: 24) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Music")
                        
                        Text("0s")
                    }
                    
                    .font(.subheadline)
                    .textCase(.uppercase)
                    .opacity(0.7)
                 
                // MARK: Tilte
                    Text("1 Minute Relx and Meditation")
                        .font(.title)
                    
                
                // MARK: Description
                    Text("Clear your mind and take a moment for your self, allow your soul to fly in the space!")
                    
                    Spacer()
                }
                .foregroundColor(.white)
                .padding(20)
            }
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MeditationView()
    }
}
