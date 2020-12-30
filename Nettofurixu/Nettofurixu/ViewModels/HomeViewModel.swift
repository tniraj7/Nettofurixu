import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var movies: [String : [Movie]] = [:]
    
    var allCategories: [String]  {
        movies.keys.map { String($0) }
    }
    
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
    
    func getMovie(forCat cat: String) -> [Movie]{
        return movies[cat] ?? []
    }
}
