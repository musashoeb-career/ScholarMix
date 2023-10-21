import SwiftUI

struct Sort: View {
    @State private var isShowingSortedView = false
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationView {
                VStack {
                        Button("Sort Users") {
                            isShowingSortedView = true
                        }
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)
                        .background(Color(red: 0.809, green: 0.842, blue: 0.709))
                        .foregroundColor(Color.white)
                        .cornerRadius(7)
                        .font(.system(size: 20, weight: .bold))
                    NavigationLink("", destination: SortedView(), isActive: $isShowingSortedView)
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
