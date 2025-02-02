import SwiftUI

struct AppBarView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                HStack{
                    Image(systemName: "location.fill")
                        .font(.title)
                        .foregroundColor(Color(hex: "#F15700"))
                    
                    Text("Home")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.black)
                        .lineLimit(1)
                        .truncationMode(.tail)
                    
                    Image(systemName: "chevron.down")
                        .font(.headline)
                        .foregroundColor(Color.gray)
                }
                Text("Sujith, Room No 303, Third Floor, Pg for Gents, 1st B Cross, Adj. Prasanth Layout")
                    .font(.subheadline)
                    .foregroundColor(Color(hex: "#606062"))
                    .lineLimit(1)
                    .truncationMode(.tail)
                
            }
            Spacer()
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width:  40, height: 40 )
                .font(.title)
                .foregroundColor(Color(hex: "#3c3a3f"))
                .background(.white)
                .cornerRadius(100)
            
        }
        .padding([.top, .horizontal])
    }
}

#Preview {
    AppBarView()
}
