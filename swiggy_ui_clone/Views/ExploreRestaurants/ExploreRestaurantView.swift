import SwiftUI

struct ExploreRestaurantView: View {
    let restaurant: RestaurantModel
    
    init(restaurant: RestaurantModel) {
        self.restaurant = restaurant
    }
    
    var body: some View {
        HStack(spacing: 10) {
            // Image on the left with fixed size
            NetworkImageView(
                url: restaurant.image,
                height: 160,
                width: 160,
                cornerRadius: 20
            )
            .frame(width: 160, height: 160)
            .shadow(radius: 5)
            
            // VStack with restaurant details on the right
            VStack(alignment: .leading, spacing: 8) {
                Text(restaurant.name)
                    .font(.title3)
                    .fontWeight(.bold)
                    .lineLimit(1)
                    .truncationMode(.tail)
                
                HStack(spacing: 3) {
                    Image(systemName: "star.circle.fill")
                        .foregroundColor(Color(hex: "#46548"))
                    Text("\(restaurant.rating, specifier: "%.1f") - \(restaurant.time)")
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                }
                
                Text(restaurant.popularItems)
                    .foregroundColor(Color(hex: "#606062"))
                    .fontWeight(.medium)
                
                Text(restaurant.location)
                    .foregroundColor(Color(hex: "#606062"))
                    .fontWeight(.regular)
                    .lineLimit(1)
                    .truncationMode(.tail)

                
                Text("(\(restaurant.distance))")
                    .foregroundColor(Color(hex: "#606062"))
                    .fontWeight(.regular)
            }
            .frame(maxWidth: .infinity, alignment: .leading) // Allow details to take full width
        }
        .frame(width: 350)
        .padding()
    }
}

#Preview {
    ExploreRestaurantView(restaurant: AppConstants.topRestaurants.first!)
}
