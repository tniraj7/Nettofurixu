import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var movies: [String : [Movie]] = [:]
}
