import Foundation
import SwiftUI


let exampleVideoURL = URL(string: "https://www.radiantmediaplayer.com/media/big-buck-bunny-360p.mp4")!
let exampleImageURL = URL(string: "https://picsum.photos/300/103")!
let exampleImageURL2 = URL(string: "https://picsum.photos/300/105")!
let exampleImageURL3 = URL(string: "https://picsum.photos/300/104")!

var randomExampleImageUrl: URL {
    return [exampleImageURL, exampleImageURL2, exampleImageURL3].randomElement() ?? exampleImageURL
}

let exampleTrailer1 = Trailer(
    name: "Season 3 Trailer",
    videoURL: exampleVideoURL,
    thumbnailImageURL: randomExampleImageUrl)


let exampleTrailer2 = Trailer(
    name: "The Hero's Journey",
    videoURL: exampleVideoURL,
    thumbnailImageURL: randomExampleImageUrl)


let exampleTrailer3 = Trailer(
    name: "The Mysterious",
    videoURL: exampleVideoURL,
    thumbnailImageURL: randomExampleImageUrl)

var exampleTrailers: [Trailer] {
    return [exampleTrailer1, exampleTrailer2, exampleTrailer3].shuffled()
}


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
    thumbnailImageURLString:  "https://picsum.photos/300/103",
    description: "Clausen and Charlette interview Regina. The stranger takes Hannah to 1987, where Claudia has an unnerving encounter and Egon visits an old nemesis.",
    length: 54,
    videoURL: exampleVideoURL)

let episode3 = Episode(
    name: "Ghosts",
    season: 1,
    episodeNumber: 3,
    thumbnailImageURLString:  "https://picsum.photos/300/104",
    description: "In 1954, a missing Helge returns, but he'll only speak to Noah. In 1987, Claudia brings the time machine to Tannhaus, and Egon questions Elrich again.",
    length: 56,
    videoURL: exampleVideoURL)

let episode4 = Episode(
    name: "Beginnings and Endings",
    season: 2,
    episodeNumber: 1,
    thumbnailImageURLString:  "https://picsum.photos/300/105",
    description: "Six months after the disappearances, the police from a task force. In 2052, Jonas learns that most of Winden persihed in an Apocalyptic event.",
    length: 53,
    videoURL: exampleVideoURL)

let episode5 = Episode(
    name: "Dark Matter",
    season: 2,
    episodeNumber: 2,
    thumbnailImageURLString:  "https://picsum.photos/300/106",
    description: "Clausen and Charlette interview Regina. The stranger takes Hannah to 1987, where Claudia has an unnerving encounter and Egon visits an old nemesis.",
    length: 54,
    videoURL: exampleVideoURL)

let episode6 = Episode(
    name: "Ghosts",
    season: 2,
    episodeNumber: 3,
    thumbnailImageURLString:  "https://picsum.photos/300/107",
    description: "In 1954, a missing Helge returns, but he'll only speak to Noah. In 1987, Claudia brings the time machine to Tannhaus, and Egon questions Elrich again.",
    length: 56,
    videoURL: exampleVideoURL)

let allExampleEpisodes = [
    episode1,
    episode2,
    episode3,
    episode4,
    episode5,
    episode6
]

let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "DARK",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exciting", "Suspense", "Sci-Fi TV"],
    defaultEpisodeInfo: exampleEpisodeInfo1,
    episodes: allExampleEpisodes,
    moreLikeThisMovies: exampleMovies,
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 2,
    trailers: exampleTrailers,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hoffman, Oliver Masucci, Jordis Triebel")

let exampleMovie2 = Movie(
    id: UUID().uuidString,
    name: "Travelers",
    thumbnailURL: URL(string: "https://picsum.photos/200/300/")!,
    categories:  ["Dystopian", "Exciting", "Suspense", "Sci-Fi TV"],
    defaultEpisodeInfo: exampleEpisodeInfo1,
    episodes: allExampleEpisodes,
    moreLikeThisMovies: [],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 2,
    promotionHeadline: "Best Rated Show",
    trailers: exampleTrailers,
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
    trailers: exampleTrailers,
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
    trailers: exampleTrailers, creators: "Baran bo Odan, Jantje Friese",
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
    trailers: exampleTrailers, creators: "Baran bo Odan, Jantje Friese",
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
    trailers: exampleTrailers, creators: "Baran bo Odan, Jantje Friese",
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
    trailers: exampleTrailers, creators: "Baran bo Odan, Jantje Friese",
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
