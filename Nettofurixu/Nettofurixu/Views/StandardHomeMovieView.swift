import SwiftUI
import KingfisherSwiftUI

struct StandardHomeMovieView: View {
    
    var movie: Movie
    
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
    }
}

struct StandardHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovieView(movie: exampleMovie1)
            
    }
}
