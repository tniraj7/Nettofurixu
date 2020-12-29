import SwiftUI
import KingfisherSwiftUI

struct StandardHomeMovie: View {
    
    var movie: Movie
    
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
            .cornerRadius(8)
    }
}

struct StandardHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovie(movie: exampleMovie1)
            
    }
}
