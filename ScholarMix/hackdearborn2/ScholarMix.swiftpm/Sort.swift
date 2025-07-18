import SwiftUI

struct Sort: View {
    @State private var isShowingEventSort = false
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationView {
                VStack {
                    Button("Sort Users") {
                        isShowingEventSort = true
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    .background(Color(red: 0.809, green: 0.842, blue: 0.709))
                    .foregroundColor(Color.white)
                    .cornerRadius(7)
                    .font(.system(size: 20, weight: .bold))
                    NavigationLink("", destination: Sorted(), isActive: $isShowingEventSort)
                    Spacer()
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
        }
    }
}

struct Sort_Previews: (PreviewProvider) {
    static var previews: some View {
        Sort()
    }
}
