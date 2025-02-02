import SwiftUI

struct TopRestaurantsSection: View {
    
    let restaurants: [RestaurantModel]
    
    init(topRestaurants: [RestaurantModel]) {
        self.restaurants = topRestaurants
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Top restaurant chains in Bangalore")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(Color(hex: "#414347"))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                
            TopRestaurantsList(topRestaurants: restaurants)
            
        }
    }
}

#Preview {
    TopRestaurantsSection(topRestaurants: AppConstants.topRestaurants)
}
