import Foundation

let exampleMovie1 = Movie(id: UUID().uuidString, name: "DARK", thumbnailURL: URL(string: "https://picsum.photos/200/300")!, categories: ["Dystopian, Exciting, Suspense, Sci-Fi TV"])

let exampleMovies: [Movie] = [
    Movie(id: UUID().uuidString, name: "DARK", thumbnailURL: URL(string: "https://picsum.photos/200/300/")!, categories:  ["Dystopian, Exciting, Suspense, Sci-Fi TV"]),
    Movie(id: UUID().uuidString, name: "Travelers", thumbnailURL: URL(string: "https://picsum.photos/200/300/")!, categories:  ["Dystopian, Exciting, Suspense, Sci-Fi TV"]),
    Movie(id: UUID().uuidString, name: "Community", thumbnailURL: URL(string: "https://picsum.photos/200/301/")!, categories:  ["Dystopian, Exciting, Suspense, Sci-Fi TV"]),
    Movie(id: UUID().uuidString, name: "Alone", thumbnailURL: URL(string: "https://picsum.photos/200/302/")!, categories:  ["Dystopian, Exciting, Suspense, Sci-Fi TV"]),
    Movie(id: UUID().uuidString, name: "Hannibal", thumbnailURL: URL(string: "https://picsum.photos/200/303/")!, categories:  ["Dystopian, Exciting, Suspense, Sci-Fi TV"]),
    Movie(id: UUID().uuidString, name: "After Life", thumbnailURL: URL(string: "https://picsum.photos/200/304/")!, categories:  ["Dystopian, Exciting, Suspense, Sci-Fi TV"])
]
