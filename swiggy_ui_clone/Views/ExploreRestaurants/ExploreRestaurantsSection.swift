import SwiftUI

struct ExploreRestaurantsSection: View {

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Recomended restaurants to explore")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(Color(hex: "#414347"))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                
            ExploreRestaurantsList()
            
        }
    }
}

#Preview {
    
    ExploreRestaurantsSection()
}
