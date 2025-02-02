import SwiftUI

struct RestaurantDetailsView: View {
    let restaurant: RestaurantModel

    @Environment(\.presentationMode) var presentationMode // Access the presentation mode
    
    init(restaurant: RestaurantModel) {
        self.restaurant = restaurant
    }

    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading, spacing: 16) {
                // Header Image
                ZStack(alignment: .bottomLeading) {
                    AsyncImage(url: URL(string: restaurant.image)) { phase in
                        switch phase {
                        case .empty:
                            ProgressView() // Loading indicator
                                .frame(height: 300)
                        case .success(let image):
                            image
                                .resizable()
                                .scaledToFill()
                                .frame(height: 300)
                                .clipShape(BottomRoundedShape(radius: 40))
                                .shadow(radius: 5, x: 0, y: 3)

                                
                        case .failure:
                            Color.gray // Placeholder for failed image load
                                .frame(height: 300)
                        @unknown default:
                            Color.gray
                                .frame(height: 300)
                        }
                    }
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    
                    // Restaurant Name in Header
                    Text(restaurant.name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    
                    // Ratings
                    HStack {
                        Image(systemName: "star.circle.fill")
                            .foregroundColor(Color(hex: "#46548"))
                        Text("\(String(format: "%.1f", restaurant.rating))")
                            .font(.subheadline)
                            .foregroundColor(Color(hex: "#46548"))
                        
                        Spacer()
                        
                        Text("20 Reviews")
                            .font(.subheadline)
                            .foregroundColor(.cyan)
                    }
                    
                    // Famous Items
                    Text("Famous for: \(restaurant.popularItems)")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hex: "#414347"))
                        
                    // Location
                    Text("📍 \(restaurant.location)")
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color(hex: "#414347"))
                    
                    HStack {
                        // Distance and time
                        Text("🏍️ \(restaurant.distance)")
                            .font(.body)
                            .fontWeight(.medium)
                            .foregroundColor(Color(hex: "#414347"))
                        
                        Text("- \(restaurant.time)")
                            .font(.body)
                            .fontWeight(.medium)
                            .foregroundColor(Color(hex: "#414347"))
                    }
                    
                    Divider()
                    
                    // Static Menu Items
                    Text("Menu")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.top)
                    
                    ForEach(AppConstants.menuItems.shuffled(), id: \.self) { item in
                        HStack {
                            Text(item)
                                .font(.body)
                            Spacer()
                            Text("₹ \(Int.random(in: 100...300))")
                                .font(.body)
                                .foregroundColor(Color(hex: "#414347"))
                        }
                        Divider()
                    }
                }
                .padding(.horizontal)
            }
        }
        .navigationTitle("\(restaurant.name) - (\(restaurant.time))")
        .navigationBarBackButtonHidden(false) // Hide the default back button
        .navigationBarItems(leading: Button(action: {
            presentationMode.wrappedValue.dismiss() // Custom back button action
        }) {
            Spacer()

        })
        .navigationBarTitleDisplayMode(.inline)
    }
}


#Preview {
    RestaurantDetailsView(
        restaurant: AppConstants.topRestaurants.first!
    )
}


