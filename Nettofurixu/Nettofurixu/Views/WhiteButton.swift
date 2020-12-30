import SwiftUI

struct WhiteButton: View {
    
    var title: String
    var imageName: String
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
            .foregroundColor(.black)
            .background(Color.white)
            .cornerRadius(3)
        })
    }
}

struct WhiteButotn_Previews: PreviewProvider {
    static var previews: some View {
        WhiteButton(title: "Play", imageName: "play.fill") {
            //
        }
        .preferredColorScheme(.dark)
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
