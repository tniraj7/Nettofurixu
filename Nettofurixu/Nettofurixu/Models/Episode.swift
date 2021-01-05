import Foundation

struct Episode: Identifiable {
    var id =  UUID().uuidString
    var name: String
    var season: Int
    var episodeNumber: Int
    var thumbnailImageURLString: String
    var description: String
    var length: Int
     
    var videoURL: URL
    
    var thumbnail: URL {
        return URL(string: thumbnailImageURLString)!
    }
    
}
