//
//  View2.swift
//  ScholarMix
//
//  Created by meher on 10/22/23.
//

import Foundation
import SwiftUI

struct View2: View {
    let matches = matchList
    var body: some View {
        List {
            Section {
                ForEach(matches, id: \.self) {match in
                    NavigationLink(destination: Text(match)) {
                        Image(userPicture[match] ?? "default.jpg")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .aspectRatio(contentMode: .fit)
                            .clipShape(Circle())
                        
                        Text(match)
                            .font(.system(size: 20, weight: .bold))
                    }
                    .padding(.vertical, 30)
                }
            }
        }
        .navigationTitle("Messages")
        .navigationBarTitleDisplayMode(.inline)
    }
}
