
import SwiftUI

struct FoodItemsGrid: View {
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack(spacing: 0) {
                HStack(spacing: 10) {
                    ForEach(0..<AppConstants.imageUrls.count / 2 + AppConstants.imageUrls.count % 2, id: \.self) { index in
                        NetworkImageView(
                            url: AppConstants.imageUrls[index],
                            height: 100,
                            width: 70,
                            cornerRadius: 10
                        )
                    }
                }
                
                HStack(spacing: 10) {
                    ForEach(AppConstants.imageUrls.count / 2..<AppConstants.imageUrls.count, id: \.self) { index in
                        NetworkImageView(
                            url: AppConstants.imageUrls[index],
                            height: 100,
                            width: 70,
                            cornerRadius: 10
                        )
                    }
                }
            }
            .padding()
        }
    }
}

struct FoodItems_Previews: PreviewProvider {
    static var previews: some View {
        FoodItemsGrid()
    }
}
