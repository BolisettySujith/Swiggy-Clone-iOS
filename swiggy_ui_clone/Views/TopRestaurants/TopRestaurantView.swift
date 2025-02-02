import SwiftUI

struct TopRestaurantView: View {
    let restaurant: RestaurantModel
    
    init(restaurant: RestaurantModel) {
        self.restaurant = restaurant
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            NetworkImageView(
                url: restaurant.image,
                height: 100, 
                width: 160,
                cornerRadius: 20
            )
            Text(restaurant.name)
                .font(.title3)
                .fontWeight(.bold)
                .lineLimit(1)
                .truncationMode(.tail)
            HStack(spacing:3){
                Image(systemName: "star.circle.fill")
                    .foregroundColor(Color(hex: "#46548"))
                Text("\(restaurant.rating, specifier: "%.1f") - \(restaurant.time)")
            }
            Text(restaurant.popularItems)
                .foregroundColor(Color(hex: "#606062"))
                .fontWeight(.medium)
                .lineLimit(1)
                .truncationMode(.tail)
        }
        .frame(width: 160)

    }
}

#Preview {
    TopRestaurantView(restaurant: AppConstants.topRestaurants.first!)
}
