import SwiftUI

struct EpisodeView: View {
    
    var episodes: [Episode]
    @Binding var showSeasonPicker: Bool
    @Binding var selectedSeason : Int
    
    
    func getEpisodesForSeason(forSeason season: Int) -> [Episode]  {
        return episodes.filter({ $0.season == season})
    }
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    showSeasonPicker = true
                }, label: {
                    Group {
                        Text("Season 1")
                        Image(systemName: "chevron.down")
                    }
                    .font(.system(size: 16))
                    
                })
                
                Spacer()
                
            }
            
            ForEach(getEpisodesForSeason(forSeason: selectedSeason)) { episode in
                Text("test")
            }
            
            Spacer()
             
        }
        .foregroundColor(.white)
       
    }
}

struct EpisodeView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeView(episodes: [episode1, episode2, episode3], showSeasonPicker: .constant(false), selectedSeason: .constant(1))
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
