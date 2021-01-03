import SwiftUI

enum CustomTab: String {
    case episodes = "EPISODES"
    case trailers = "TRAILERS"
    case more = "MORE LIKE THIS"
}

struct CustomTabSwitcherView: View {
    
    var tabs: [CustomTab]
    
    
    private func widthForTab(_ tab: CustomTab) -> CGFloat {
        let string = tab.rawValue
        return string.widhtOfString(usingFont: .systemFont(ofSize: 16, weight: .bold))
    }
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(tabs, id: \.self ) { tab in
                        VStack {
                            
                            Rectangle()
                                .frame(width: widthForTab(tab), height: 6)
                            Button(action: {
                                
                            }, label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                            })
                            .buttonStyle(PlainButtonStyle())
                           
                        }
                    }
                }
            }
            
            Text("Selected VIew")
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
