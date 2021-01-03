import SwiftUI

enum CustomTab: String {
    case episodes = "EPISODES"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
}

struct CustomTabSwitcherView: View {
    
    var tabs: [CustomTab]
    @State private var currentTab: CustomTab = .episodes
    
    private func widthForTab(_ tab: CustomTab) -> CGFloat {
        let string = tab.rawValue
        return string.widhtOfString(usingFont: .systemFont(ofSize: 16, weight: .bold))
    }
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(tabs, id: \.self ) { tab in
                        VStack {
                            Rectangle()
                                .frame(width: widthForTab(tab), height: 6)
                                .foregroundColor( tab == currentTab ? Color.red : Color.clear)
                            
                            Button(action: {
                                currentTab = tab
                            }, label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor( tab == currentTab ? Color.white : Color.gray)
                            })
                            .buttonStyle(PlainButtonStyle())
                            .frame(width: widthForTab(tab), height: 30)
                           
                        }
                    }
                }
            }
            
            switch currentTab {
            case .episodes:
                Text("EPISODES")
                
            case .trailers:
                Text("TRAILERS & MORE")
                
            case .more:
                Text("MORE")
            }
        }
        .foregroundColor(.white)
    }
}



struct CustomTabSwitcherView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CustomTabSwitcherView(tabs: [.episodes, .trailers, .more])
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
