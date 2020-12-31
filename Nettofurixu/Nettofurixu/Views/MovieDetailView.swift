import SwiftUI

struct MovieDetailView: View {
    
    let movie: Movie
    let screen = UIScreen.main.bounds
    
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
                    }
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
