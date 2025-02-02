
import SwiftUI

struct NetworkImageView: View {
    let url: String
    let height: Double
    let width: Double
    let cornerRadius: Double
    
    init(url: String, height: Double, width: Double, cornerRadius: Double) {
        self.url = url
        self.height = height
        self.width = width
        self.cornerRadius = cornerRadius
    }
    
    var body: some View {
        AsyncImage(url: URL(string: url)) { phase in
            switch phase {
            case .empty:
                ProgressView()
                    .frame(width: width, height: height)
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(cornerRadius)
            case .success(let image):
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width: width, height: height)
                    .cornerRadius(cornerRadius)
                    .clipped()
            case .failure:
                Color.red
                    .frame(width: width, height: height)
                    .cornerRadius(cornerRadius)
            @unknown default:
                EmptyView()
            }
        }
    }
}
