//
//  View3.swift
//  ScholarMix
//
//  Created by meher on 10/22/23.
//

import Foundation
import SwiftUI

struct View3: View {
    var body: some View {
        ZStack {
            Image("testprofile")
                .resizable()
                .aspectRatio(contentMode: .fill)
                //.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            VStack {
                Text("Test")
            }
        }
    }
}
