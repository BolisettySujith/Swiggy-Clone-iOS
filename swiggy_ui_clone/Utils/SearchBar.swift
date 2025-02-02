import SwiftUI

// Search Bar component
struct SearchBar: View {
    @Binding var text: String
    
    var body: some View {
        VStack {
            ZStack {
                // Text Field with Border
                TextField("", text: $text, prompt: Text("Search for 'Biriyani'")
                    .font(.title3)
                    .foregroundColor(Color(hex: "#606062"))
                )
                    .padding(18)
                    .background(Color.white)
                    .cornerRadius(10)
                    .frame(height: 60.0)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray.opacity(0.4), lineWidth: 1)
                    )
                    .padding(.horizontal)
                    
                
                // Trailing Icons Inside the TextField
                HStack {
                    Spacer() // Pushes the icons to the right side
                    if text.isEmpty {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .scaledToFit()
                            .frame(width:  25, height: 25 )
                            .font(.title)
                            .foregroundColor(Color(hex: "#606062"))
                        Spacer().frame(width: 10)
                        Rectangle()
                            .frame(width: 1, height: 25)
                            .foregroundColor(.gray)
                        Image(systemName: "mic.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width:  25, height: 25 )
                            .font(.title)
                            .foregroundColor(Color(hex: "#F15700"))
                            
                    }
                    if !text.isEmpty {
                        Button(action: {
                            text = "" // Clear the text
                        }) {
                            Image(systemName: "xmark.circle.fill")
                                .foregroundColor(.gray)
                        }
                    }
                    Spacer().frame(width: 20)
                }
                .padding(.horizontal, 12)
                .padding(.top, 0)
            }
            .frame(height: 80)
            .background(.white)
            .cornerRadius(10)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        @State var searchText = ""
        
        SearchBar(text: $searchText)

    }
}
