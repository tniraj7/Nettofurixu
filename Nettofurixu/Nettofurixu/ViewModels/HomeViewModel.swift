import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var movies: [String : [Movie]] = [:]
    
    var allCategories: [String]  {
        movies.keys.map { String($0) }
    }
    
    var allGenres: [HomeGenre] = [.Action, .AllGenres, .Comedy, .Horror, .Thriller]
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Standup Comedy"] = exampleMovies.shuffled()
        movies["New Releases"] = exampleMovies.shuffled()
        movies["Watch It Again"] = exampleMovies.shuffled()
        movies["Sci-Fi Movies"] = exampleMovies.shuffled()
    }
    
    func getMovie(forCat cat: String, andHomeRow homerow: HomeTopRow, andGenre genre: HomeGenre) -> [Movie] {
        
        switch homerow {
        case .home:
            return movies[cat] ?? []
        case .movies:
            return (movies[cat] ?? []).filter({ $0.movieType == .movie && ($0.genre ==  genre) })
        case .tvshows:
            return (movies[cat] ?? []).filter({ $0.movieType == .tvshow && ($0.genre ==  genre) })
        case .myList:
            return movies[cat] ?? []
        }
    }
}
