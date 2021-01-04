import SwiftUI
import KingfisherSwiftUI

struct TopMoviePreviewView: View {
    var movie: Movie
    
    private func isCateogoryLast(cat: String) -> Bool {
        let catCount = movie.categories.count
        if let index = movie.categories.firstIndex(of: cat) {
            if index + 1 != catCount {
                return false
            }
        }
        return true
    }
    
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            
            VStack(spacing: 8) {
                Spacer()
                HStack {
                    ForEach(movie.categories, id: \.self) { category in
                        HStack {
                            Text(category)
                                .font(.footnote)
                             
                            if !isCateogoryLast(cat: category) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 3))
                            }
                        }
                    }
                }
                
                HStack {
                    Spacer()
                    
                    SmallVerticalButton(title: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                        //
                    }
                    
                    Spacer()
                    
                    PlayButton(title: "Play", imageName: "play.fill") {
                        //
                    }.frame(width: 120)
                    
                    Spacer()
                    
                    SmallVerticalButton(title: "Info", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true) {
                        //
                    }
                    
                    Spacer()
                }
            }
            .background(
                LinearGradient.blackOpacityGradient
                    .padding(.top, 250)
            )
        }.foregroundColor(.white)
    }
}

struct TopMoviePreviewView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreviewView(movie: exampleMovie2)
    }
}
