import SwiftUI

struct ExploreRestaurantsList: View {
    var body: some View {
        VStack(spacing: 0) {
            ForEach(0..<AppConstants.allRestaurants.count, id: \.self) { index in
                NavigationLink(destination: RestaurantDetailsView(restaurant: AppConstants.allRestaurants[index])) {
                    ExploreRestaurantView(restaurant: AppConstants.allRestaurants[index])
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
    }
}

#Preview {
    ExploreRestaurantsList()
}
