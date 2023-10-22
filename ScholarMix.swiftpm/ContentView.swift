import SwiftUI
import Charts
struct ContentView: View {
    let matches = matchList

    var body: some View {
        NavigationView {
            List {
                ForEach(matches, id: \.self) {match in
                    NavigationLink(destination: Text(match)) {
                        Image(systemName: "person.crop.circle.fill")
                        Text(match)
                    }.padding(.vertical, 50)
                        .background(Color(hue: 0.107, saturation: 0.226, brightness: 0.934))
                }
            }
        }
        //MatchConvos()
        Spacer()
        VStack (alignment: .trailing){
            FooterView()
                .foregroundColor(Color(red: 0.5843137254901961, green: 0.6274509803921569, blue: 0.4549019607843137))
        }.background(Color(red: 0.9137254901960784, green: 0.9215686274509803, blue: 0.8901960784313725))
        //Image("Temp")
        
    }
}
