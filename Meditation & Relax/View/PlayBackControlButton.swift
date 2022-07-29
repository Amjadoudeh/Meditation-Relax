import SwiftUI

struct PlayBackControlButton: View {
    var systemName: String = "play"
    var fontSize: CGFloat = 24
    var color: Color = .white
    var action: () -> Void
    var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: systemName)
                .font(.system(size: fontSize))
                .foregroundColor(color)
        }
    }
}

struct PlayControllVButton_Previews: PreviewProvider {
    static var previews: some View {
        PlayBackControlButton(action: {})
            .preferredColorScheme(.dark)
    }
}
