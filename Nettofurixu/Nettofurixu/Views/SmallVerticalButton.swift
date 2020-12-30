import SwiftUI

struct SmallVerticalButton: View {
    
    var title: String
    var isOnImage: String
    var isOffImage: String
    var isOn: Bool
    
    var imageName: String {
        if isOn {
            return isOnImage
        } else {
            return isOffImage
        }
    }
    
    var action: () -> Void
        
    var body: some View {
        Button(action: action, label: {
            VStack(spacing: 4) {
                Image(systemName: imageName)
                    .foregroundColor(.white)
                Text(title)
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                    .bold()
            }
        })
    }
}

struct SmallVerticalButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SmallVerticalButton(title: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                print("tapped")
            }
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
            
            SmallVerticalButton(title: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: false) {
                print("tapped")
            }
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
        }
    }
}
