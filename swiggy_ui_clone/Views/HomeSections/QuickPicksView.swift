
import SwiftUI

enum TabType: String, CaseIterable {
    case whatsNew = "What's New?"
    case fastDelivery = "Fast Delivery"
    case biriyani = "Biriyani's"
}


struct QuickPicksView: View {
    @State private var selectedTab: TabType = .whatsNew
    @State private var restaurants: [RestaurantModel] = AppConstants.topRestaurants
    
    func filteredRestaurants(for tab: TabType) -> [RestaurantModel] {
        var filtered: [RestaurantModel] = []
        switch tab {
        case .whatsNew:
            filtered = Array(AppConstants.topRestaurants.suffix(4))
        case .fastDelivery:
            filtered = Array(AppConstants.exploreRestaurants.suffix(4))
        case .biriyani:
            filtered = Array(AppConstants.topRestaurants.prefix(4))
        }
        return filtered
    }

    
    var body: some View {
        VStack(spacing: 0) {
            Text("QUICK PICKS FOR YOU")
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundColor(.black)
                .kerning(2.5)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                
            // Tab Section
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(TabType.allCases, id: \.self) { tab in
                        Text(tab.rawValue) // Use the raw value of the enum
                            .font(.body)
                            .fontWeight(.semibold)
                            .padding(.horizontal, 16)
                            .padding(.vertical, 8)
                            .background(selectedTab != tab ? .white : .black)
                            .cornerRadius(20)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                            )
                            .foregroundColor(selectedTab == tab ? .white : Color(hex: "#414347"))
                            .onTapGesture {
                                selectedTab = tab
                            }
                    }
                }
                .padding(.horizontal)
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                VStack(spacing: 0) {
                    HStack(spacing: 10) {
                        let filtered = filteredRestaurants(for: selectedTab)
                        ForEach(0..<filtered.count, id: \.self) { index in
                            NavigationLink(destination: RestaurantDetailsView(restaurant: filtered[index])) {
                                TopRestaurantView(restaurant: filtered[index])
                            }
                            .buttonStyle(PlainButtonStyle())
                            
                        }
                    }
                }.padding()
            }
        }

    }
}


#Preview{
    QuickPicksView()
}
