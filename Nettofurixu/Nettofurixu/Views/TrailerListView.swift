import SwiftUI

struct TrailerListView: View {
    
    var trailer: [Trailer]
    let screen = UIScreen.main.bounds
    
    var body: some View {
        VStack {
            ForEach(trailer) { trailer in
                VStack(alignment: .leading) {
                    VideoPreviewImage(imageURL: trailer.thumbnailImageURL, videoURL: trailer.videoURL)
                        .frame(maxWidth: screen.width)
                    
                    Text(trailer.name)
                        .font(.headline)
                }
                .foregroundColor(.white)
                .padding(.bottom, 10)
            }
        }
    }
}

struct TrailerListView_Previews: PreviewProvider {
    static var previews: some View {
        TrailerListView(trailer: exampleTrailers)
            .preferredColorScheme(.dark)
    }
}
