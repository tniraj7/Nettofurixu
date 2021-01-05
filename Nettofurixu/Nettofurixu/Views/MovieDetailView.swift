import SwiftUI

struct MovieDetailView: View {
    
    let movie: Movie
    let screen = UIScreen.main.bounds
    @State private var showSeasonPicker = false
    @State private var seletedSeason = 1
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "xmark.circle")
                            .font(.system(size: 28))
                    })
                }
                .padding(.horizontal, 22)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        StandardHomeMovieView(movie: movie)
                            .frame(width: screen.width / 2.5)
                        
                        MovieInfoSubheadlineView(movie: movie)
                        
                        if movie.promotionHeadline != nil {
                            Text(movie.promotionHeadline!)
                                .bold()
                                .font(.headline)
                        }
                        
                        PlayButton(title: "Play", imageName: "play.fill", backgroundColor: Color.red) {
                            //
                        }

                        CurrentEpisodeInformationView(movie: movie)
                        
                        CastInfo(movie: movie)
                        
                        HStack(spacing: 60) {
                            SmallVerticalButton(title: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                                //
                            }
                            
                            SmallVerticalButton(title: "Rate", isOnImage: "hand.thumbsup.fill", isOffImage: "hand.thumbsup", isOn: false) {
                                //
                            }
                            
                            SmallVerticalButton(title: "Share", isOnImage: "square.and.arrow.up", isOffImage: "square.and.arrow.up", isOn: true) {
                                //
                            }
                            
                            Spacer()
                        }
                        .padding(.leading, 20)
                        
                        CustomTabSwitcherView(tabs: [.episodes, .trailers, .more], movie: exampleMovie1)
                    }
                    .padding(.horizontal, 10)
                }
                
                Spacer()
            }
            .foregroundColor(.white)
        }
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: exampleMovie2)
    }
}

struct MovieInfoSubheadlineView: View {
    var movie: Movie
    
    var body: some View {
        HStack(spacing: 20) {
            Button(action: {
                
            }, label: {
                Image(systemName: "hand.thumbsup.fill")
                    .foregroundColor(.white)
            })
            
            Text(String(movie.year))
            
            RatingView(rating: movie.rating)
            
            Text(movie.numberOfSeasonsDisplay)
            
            HDView()
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}

struct RatingView: View {
    var rating : String
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 1)
                .foregroundColor(Color(#colorLiteral(red: 0.2992544416, green: 0.2992544416, blue: 0.2992544416, alpha: 1)))
            
            Text(rating)
                .foregroundColor(.white)
                .font(.system(size: 12))
                .bold()
        }
        .frame(width: 50, height: 20)
    }
}

struct HDView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 1)
                .stroke(lineWidth: 2)
                .foregroundColor(Color(#colorLiteral(red: 0.2697295368, green: 0.2697295368, blue: 0.2697295368, alpha: 1)))
            
            Text("HD")
                .foregroundColor(.white)
                .font(.system(size: 12))
                .bold()
        }
        .frame(width: 25, height: 20)
    }
}

struct CastInfo: View {
    var movie: Movie
    var body: some View {
        VStack(spacing: 3) {
            HStack {
                Text("Cast: \(movie.cast)")
                Spacer()
            }
            
            HStack {
                Text("Creators: \(movie.cast)")
                Spacer()
            }
        }
        .font(.caption)
        .foregroundColor(.gray)
        .padding(.vertical, 10)
    }
}

struct CurrentEpisodeInformationView: View {
    var movie: Movie
    var body: some View {
        Group {
            HStack {
                Text(movie.episodeInfoDisplay)
                    .bold()
                Spacer()
            }
            .padding(.vertical, 4)
            
            HStack {
                Text(movie.episodeDescriptionDisplay)
                    .font(.subheadline)
                Spacer()
            }
        }
    }
}
