import Foundation
import SwiftUI


let exampleVideoURL = URL(string: "https://www.radiantmediaplayer.com/media/big-buck-bunny-360p.mp4")!

let episode1 = Episode(
    name: "Beginnings and Endings",
    season: 1,
    episodeNumber: 1,
    thumbnailImageURLString:  "https://picsum.photos/300/102",
    description: "Six months after the disappearances, the police from a task force. In 2052, Jonas learns that most of Winden persihed in an Apocalyptic event.",
    length: 53,
    videoURL: exampleVideoURL)

let episode2 = Episode(
    name: "Dark Matter",
    season: 1,
    episodeNumber: 2,
    thumbnailImageURLString:  "https://picsum.photos/300/102",
    description: "Clausen and Charlette interview Regina. The stranger takes Hannah to 1987, where Claudia has an unnerving encounter and Egon visits an old nemesis.",
    length: 54,
    videoURL: exampleVideoURL)

let episode3 = Episode(
    name: "Ghosts",
    season: 1,
    episodeNumber: 3,
    thumbnailImageURLString:  "https://picsum.photos/300/102",
    description: "In 1954, a missing Helge returns, but he'll only speak to Noah. In 1987, Claudia brings the time machine to Tannhaus, and Egon questions Elrich again.",
    length: 56,
    videoURL: exampleVideoURL)

let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "DARK",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exciting", "Suspense", "Sci-Fi TV"],
    defaultEpisodeInfo: exampleEpisodeInfo1,
    moreLikeThisMovies: exampleMovies,
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hoffman, Oliver Masucci, Jordis Triebel")

let exampleMovie2 = Movie(
    id: UUID().uuidString,
    name: "Travelers",
    thumbnailURL: URL(string: "https://picsum.photos/200/300/")!,
    categories:  ["Dystopian", "Exciting", "Suspense", "Sci-Fi TV"],
    defaultEpisodeInfo: exampleEpisodeInfo1,
    moreLikeThisMovies: [],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 2,
    promotionHeadline: "Best Rated Show",
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hoffman, Oliver Masucci, Jordis Triebel")

let exampleMovie3 = Movie(
    id: UUID().uuidString,
    name: "Community",
    thumbnailURL: URL(string: "https://picsum.photos/200/301/")!,
    categories:  ["Dystopian", "Exciting", "Suspense", "Sci-Fi TV"],
    defaultEpisodeInfo: exampleEpisodeInfo1,
    moreLikeThisMovies: [],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 3,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hoffman, Oliver Masucci, Jordis Triebel")


let exampleMovie4 =  Movie(
    id: UUID().uuidString,
    name: "Alone",
    thumbnailURL: URL(string: "https://picsum.photos/200/302/")!,
    categories:  ["Dystopian", "Exciting", "Suspense", "Sci-Fi TV"],
    defaultEpisodeInfo: exampleEpisodeInfo1,
    moreLikeThisMovies: [],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 4,
    promotionHeadline: "New episodes coming soon",
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hoffman, Oliver Masucci, Jordis Triebel")

let exampleMovie5 = Movie(
    id: UUID().uuidString,
    name: "Hannibal",
    thumbnailURL: URL(string: "https://picsum.photos/200/303/")!,
    categories:  ["Dystopian", "Exciting", "Suspense", "Sci-Fi TV"],
    defaultEpisodeInfo: exampleEpisodeInfo1,
    moreLikeThisMovies: [],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 5,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hoffman, Oliver Masucci, Jordis Triebel")

let exampleMovie6 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumbnailURL: URL(string: "https://picsum.photos/200/304/")!,
    categories:  ["Dystopian", "Exciting", "Suspense", "Sci-Fi TV"],
    defaultEpisodeInfo: exampleEpisodeInfo1,
    moreLikeThisMovies: [],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 6,
    promotionHeadline: "Watch Season 6 Now",
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hoffman, Oliver Masucci, Jordis Triebel")

let exampleMovie7 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumbnailURL: URL(string: "https://picsum.photos/200/304/")!,
    categories:  ["Dystopian", "Exciting", "Suspense", "Sci-Fi TV"],
    defaultEpisodeInfo: exampleEpisodeInfo1,
    moreLikeThisMovies: [],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 6,
    promotionHeadline: "Watch Season 6 Now",
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hoffman, Oliver Masucci, Jordis Triebel")

let exampleEpisodeInfo1 = CurrentEpisodeInfo(
    episodeName: "Beginnings and Endings",
    description: "Six months after the disappearances, the police from a task force. In 2052, Jonas learns that most of Winden persihed in an Apocalyptic event.",
    season: 2,
    episode: 1
)

var exampleMovies: [Movie] {
    return [
        exampleMovie2,
        exampleMovie3,
        exampleMovie4,
        exampleMovie5,
        exampleMovie6,
        exampleMovie7
    ].shuffled()
}


extension LinearGradient {
    static let blackOpacityGradient =  LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]),
        startPoint: .top,
        endPoint: .bottom)
}

extension String {
    func widhtOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width 
    }
}
