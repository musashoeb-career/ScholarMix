//
//  SortedView.swift
//  ScholarMix
//
//  Created by meher on 10/21/23.
//

import Foundation
import SwiftUI

struct Sorted: View {
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationView {
                VStack {
                    Text("Top Scholars")
                        .foregroundColor(Color.black)
                        .font(.system(size: 50, weight: .bold))
                    Rectangle()
                        .frame(width: 350, height: 200)
                        .foregroundColor(Color(red: 0.807843137254902, green: 0.8431372549019608, blue: 0.7098039215686275))
                        .cornerRadius(7)
                    Rectangle()
                        .frame(width: 350, height: 70)
                        .foregroundColor(Color(red: 0.9137254901960784, green: 0.9215686274509803, blue: 0.8901960784313725))
                        .cornerRadius(7)
                    Rectangle()
                        .frame(width: 350, height: 70)
                        .foregroundColor(Color(red: 0.9137254901960784, green: 0.9215686274509803, blue: 0.8901960784313725))
                        .cornerRadius(7)
                    Button ("Mix it Up!"){}
                        .padding(.horizontal, 20)
                        .padding(.vertical, 30)
                        .background(Color(red: 0.809, green: 0.842, blue: 0.709))
                        .foregroundColor(Color.white)
                        .cornerRadius(7)
                        .font(.system(size: 20, weight: .bold))
                }
            }
        }
    }
}

struct Sorted_Previews: (PreviewProvider) {
    static var previews: some View {
        Sorted()
    }
}

/*
struct Sorted: View {
    var body: some View {
        struct EventSort {
            let ranking: Int
            let userName: String
            let matchPercent: Int
            //let symbol: Image
        }
        
        struct EventTitle: View {
            let event: EventSort
            var body: some View {
                HStack {}
            }
        }
        
        struct EventSort_Previews: (PreviewProvider) {
            static let event = EventSort(ranking: 1, userName: "TestUser", matchPercent: 97)
            static var previews: some View {
                EventTitle(event: event)
            }
        }
    }
}

struct Sorted_Previews: (PreviewProvider) {
    static var previews: some View {
        Sorted()
    }
}
*/
