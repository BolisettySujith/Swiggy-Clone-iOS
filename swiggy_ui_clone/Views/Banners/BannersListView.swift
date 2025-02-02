import SwiftUI

struct BannersListView: View {

    @State private var currentPage = 0
    @State private var timer: Timer? = nil
    let bannerCount = AppConstants.banners.count

    var body: some View {
        VStack {
            TabView(selection: $currentPage) {
                ForEach(0..<bannerCount, id: \.self) { index in
                    NetworkImageView(
                        url: AppConstants.banners[index],
                        height: 120,
                        width: 360,
                        cornerRadius: 10
                    )
                    .shadow(radius: 2)
                    .padding(.vertical, 5)
                    .padding(.horizontal, 5)
                    .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .frame(height: 130)
            .animation(.easeInOut(duration: 0.8), value: currentPage)
            

            // Dot indicators below the banners
            HStack(spacing: 8) {
                ForEach(0..<bannerCount, id: \.self) { index in
                    Circle()
                        .fill(currentPage == index ? Color.black : Color.gray)
                        .frame(width: currentPage == index ? 6 : 4, height: currentPage == index ? 6 : 4)
                        .scaleEffect(currentPage == index ? 1.5 : 1.0) // Slightly larger dot for the current page
                }
            }
            .padding(.top, 4)
        }
        .onAppear {
            // Set the initial page and start the timer when the view appears
            startAutoScrolling()
        }
        .onDisappear {
            // Invalidate the timer when the view disappears
            timer?.invalidate()
        }
    }

    // Function to start auto-scrolling the banners
    private func startAutoScrolling() {
        // a timer that moves to the next banner every 3 seconds
        timer = Timer.scheduledTimer(withTimeInterval: 4.0, repeats: true) { _ in
            withAnimation(.easeInOut(duration: 0.8)) { // Apply animation on timer scroll
                // Increment currentPage and loop back to the start if it's the last page
                currentPage = (currentPage + 1) % bannerCount
            }
        }
    }
}

#Preview {
    BannersListView()
}

