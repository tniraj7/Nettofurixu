import Foundation
import SwiftUI

let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "DARK",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exciting", "Suspense", "Sci-Fi TV"],
    defaultEpisodeInfo: exampleEpisodeInfo1,
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
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 5,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hoffman, Oliver Masucci, Jordis Triebel")

let exampleMovie6 =     Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumbnailURL: URL(string: "https://picsum.photos/200/304/")!,
    categories:  ["Dystopian", "Exciting", "Suspense", "Sci-Fi TV"],
    defaultEpisodeInfo: exampleEpisodeInfo1,
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

let exampleMovies: [Movie] = [
    exampleMovie1,
    exampleMovie2,
    exampleMovie3,
    exampleMovie4,
    exampleMovie5,
    exampleMovie6,
]


extension LinearGradient {
    static let blackOpacityGradient =  LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]),
        startPoint: .top,
        endPoint: .bottom)
}
