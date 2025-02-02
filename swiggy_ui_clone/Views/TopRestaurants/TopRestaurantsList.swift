import SwiftUI

struct TopRestaurantsList: View {
    let restaurants: [RestaurantModel]
    
    init(topRestaurants: [RestaurantModel]) {
        self.restaurants = topRestaurants
    }
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack(spacing: 0) {
                HStack(spacing: 10) {
                    ForEach(0..<restaurants.count, id: \.self) { index in
                        NavigationLink(destination: RestaurantDetailsView(restaurant: restaurants[index])) {
                            TopRestaurantView(restaurant: restaurants[index])
                        }
                        .buttonStyle(PlainButtonStyle())
                        
                    }
                }
            }.padding()
        }
    }
}

#Preview {
    TopRestaurantsList(topRestaurants: AppConstants.topRestaurants)
}
