import SwiftUI

struct HomePageView: View {
    @State private var searchText = ""
    @State private var scrollOffset: CGFloat = 0
    @State private var showLocation = true
    @State private var isRefreshing = false
    
    @State private var topRestaurants: [RestaurantModel] = []
    
    init() {
        _topRestaurants = State(initialValue: AppConstants.topRestaurants)
    }
    
    func refreshContent() async {
        isRefreshing = true
        
        let randomStartIndex = Int.random(in: 0...(AppConstants.topRestaurants.count - 3))
        let updateTopRestaurants: [RestaurantModel] = Array(AppConstants.topRestaurants[randomStartIndex...])
        
        // Sleep for 2 seconds to simulate loading
        try? await Task.sleep(nanoseconds: 2 * 1_000_000_000)
        
        // Update the state
        DispatchQueue.main.async {
            self.topRestaurants = updateTopRestaurants
        }
        
        isRefreshing = false
    }
    
    var body: some View {
        NavigationView{
            VStack(spacing: 0) {
                VStack {
                    if showLocation {
                        AppBarView()   
                    }
                    SearchBar(text: $searchText)
                }
                
                // Main Body with pull-to-refresh
                ScrollView(showsIndicators: false) {
                    GeometryReader { geometry in
                        Color.clear
                            .onChange(of: geometry.frame(in: .global).minY) { value in
                                // Track scroll position
                                scrollOffset = value
                                withAnimation {
                                    showLocation = scrollOffset > 10 ? true : false
                                }
                            }
                    }
                    .frame(height: 0)
                    
                    LazyVStack(
                        alignment: .leading,
                        spacing: 0,
                        pinnedViews: [.sectionHeaders]
                    ) {
                        // Header : swiggy banner & order now
                        HomeHeaderView()
                        Spacer().frame(height: 20)
                        // home page banners
                        BannersListView()
                        Spacer().frame(height: 20)
                        // what's of your mind food items
                        FoodItemsSection()
                        
                        TopRestaurantsSection(topRestaurants: self.topRestaurants)
                        Spacer().frame(height: 10)
                        
                        QuickPicksView()
                        Spacer().frame(height: 10)
                        
                        Section {
                            Spacer().frame(height: 10)
                            ExploreRestaurantsSection()
                        } header: {
                            FilterChipsView()
                                .background(.white)
                        }
                    }
                }
                .refreshable {
                    // Trigger refresh when pulled down
                    await refreshContent()
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .accentColor(.black)
        .background(.white)

    }
}

#Preview {
    HomePageView()
}
