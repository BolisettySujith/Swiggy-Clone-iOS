import SwiftUI

struct FilterChipsView: View {
    let chips = [
        "Filter", "Sort by", "10 Mins Delivery", "Cuisines", "New on Swiggy",
        "Ratings 4.0+", "Pure Veg", "Offers", "Rs. 300 - Rs. 600", "Less than Rs. 300"
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach(chips, id: \.self) { chip in
                    Text(chip)
                        .font(.body)
                        .fontWeight(.semibold)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .background(Color.white)
                        .cornerRadius(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                        )
                        .foregroundColor(Color(hex: "#414347"))
                }
            }
            .padding(.vertical, 10)
            .padding(.horizontal)
            
        }
    }

}
