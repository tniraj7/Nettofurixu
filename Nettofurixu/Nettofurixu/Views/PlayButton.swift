import SwiftUI

struct PlayButton: View {
    
    var title: String
    var imageName: String
    var backgroundColor: Color = Color.white
    var action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            HStack {
                Spacer()
                Image(systemName: imageName)
                    .font(.headline)
                
                Text(title)
                    .bold()
                    .font(.system(size: 16))
                
                Spacer()
            }
            .padding(.vertical, 6)
            .foregroundColor(backgroundColor == .white ? .black : .white)
            .background(backgroundColor)
            .cornerRadius(3)
        })
    }
}

struct WhiteButotn_Previews: PreviewProvider {
    static var previews: some View {
        PlayButton(title: "Play", imageName: "play.fill") {
            //
        }
        .preferredColorScheme(.dark)
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
