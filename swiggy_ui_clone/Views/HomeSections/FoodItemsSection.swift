
import SwiftUI

struct FoodItemsSection: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("WHAT'S ON YOUR MIND?")
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundColor(.black)
                .kerning(2.5)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                
            FoodItemsGrid()
        }
    }
}
#Preview {
    FoodItemsSection()
}
