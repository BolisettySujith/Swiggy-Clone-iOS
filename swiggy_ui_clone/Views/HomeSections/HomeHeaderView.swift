import SwiftUI

struct HomeHeaderView: View {
    var body: some View {
        // Header Image
        ZStack(alignment: .bottomLeading) {
            AsyncImage(url: URL(string: "https://framerusercontent.com/images/RcxpsRPrSJ4hgVuBYvC2R3EjVNI.jpg")) { phase in
                switch phase {
                case .empty:
                    ProgressView() // Loading indicator
                        .frame(height: 200)
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(height: 200)
                        .overlay(
                            // Black gradient fading effect
                            LinearGradient(
                                gradient: Gradient(colors: [Color.clear, Color.black]),
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                        .clipShape(BottomRoundedShape(radius: 30))
                        .shadow(radius: 2, x: 0, y: 3)
                case .failure:
                    Color.gray // Placeholder for failed image load
                        .frame(height: 200)
                @unknown default:
                    Color.gray
                        .frame(height: 200)
                }
            }

            VStack(alignment: .leading) {
                AsyncImage(url: URL(string: "https://res.cloudinary.com/dutdah0l9/image/upload/v1720058694/Swiggy_logo_bml6he.png")) { phase in
                    switch phase {
                    case .empty:
                        ProgressView() // Loading indicator
                            .frame(height: 150)
                    case .success(let image):
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 50)
                            .padding(.leading, 16)
                        
                    case .failure:
                        Color.gray // Placeholder for failed image load
                            .frame(height: 150)
                    @unknown default:
                        Color.gray
                            .frame(height: 150)
                    }
                }

                // Order Now Button
                Text("ORDER NOW")
                    .font(.system(size: 12)) 
                    .font(.body)
                    .fontWeight(.semibold)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 6)
                    .background(Color.white)
                    .cornerRadius(20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                    )
                    .foregroundColor(.black)
                    .padding(.leading, 16)
                    .padding(.top, 10)
            }
            .padding(.bottom, 16)
        }
    }
}

#Preview {
    HomeHeaderView()
}
