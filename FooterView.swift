import SwiftUI

struct FooterView: View {
    var body: some View {
        HStack(spacing: 50) {
    
            Spacer ()
            
            Button(action: {
                // ACTION
                print("Opened Match Tab!")
            }) {
                Image(systemName: "graduationcap.circle")
                    .font(.system(size:50, weight: .heavy))
                    .padding(.vertical, 10)

            }
            
            Button(action: {
                // ACTION
                print("Opened Study Tab!")
            }) {
                Image(systemName: "book.closed.circle")
                    .font(.system(size:50,weight: .heavy))
                    .padding(.vertical, 10)
            }
            
            Button(action: {
                // ACTION
                print("Opened Profile Tab!")
            }) {
                Image(systemName: "person.crop.circle")
                    .font(.system(size:50, weight: .heavy))
                    .padding(.vertical, 10)
            }
            
            Spacer()
        }
    }
}

#Preview {
    FooterView()
}
