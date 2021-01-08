import SwiftUI

struct HomeView: View {
    
    var vm = HomeViewModel()
    let screen = UIScreen.main.bounds
    @State private var movieDetailToShow: Movie? = exampleMovie7
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(.vertical, showsIndicators: false) {
                LazyVStack(spacing: 20) {
                    
                    TopRowButtons()
                    
                    TopMoviePreviewView(movie: exampleMovie2)
                        .frame(width: screen.width)
                        .padding(.top, -120)
                        .zIndex(-1)
                    
                    ForEach(vm.allCategories, id: \.self) { category in
                        VStack {
                            HStack {
                                Text(category)
                                    .font(.title3)
                                Spacer()
                            }
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack{
                                    ForEach(vm.getMovie(forCat: category)) { movie in
                                        StandardHomeMovieView(movie: movie)
                                            .frame(width: 100, height: 200)
                                            .padding(.horizontal, 20)
                                            .onTapGesture {
                                                movieDetailToShow = movie
                                            }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            
            if movieDetailToShow != nil {
                MovieDetailView(movie: movieDetailToShow!, movieDetailToShow: $movieDetailToShow)
                    .animation(.easeInOut)
                    .transition(.opacity)
            }
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct TopRowButtons: View {
    var body: some View {
        HStack {
            Button(action: {
                
            }, label: {
                Image("netflix_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
            })
            .buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Text("TV Shows")
            })
            .buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Text("Movies")
            })
            .buttonStyle(PlainButtonStyle())
            
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Text("My List")
            })
            .buttonStyle(PlainButtonStyle())
            
        }
        .padding(.leading, 20)
        .padding(.trailing, 20)
    }
}
