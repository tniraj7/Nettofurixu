import SwiftUI
import AVKit


struct SwiftUIVideoView: View {
    
    var url: URL
    private var player: AVPlayer {
        return AVPlayer(url: url)
    }
    
    var body: some View {
        VideoPlayer(player: player)
    }
}

struct SwiftUIVideoView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIVideoView(url: exampleVideoURL)
    }
}
