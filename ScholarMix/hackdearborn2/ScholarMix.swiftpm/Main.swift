//
//  Main.swift
//  ScholarMix
//
//  Created by meher on 10/21/23.
//

import SwiftUI

struct Main: View {
    @State private var selectedTab = 2
        
    var body: some View {
        ZStack {
            TabView(selection: $selectedTab) {
                View1()
                    .tabItem {
                        Image(systemName: "graduationcap.circle")
                        Text("View 1")
                    }
                    .tag(0)
                
                View2()
                    .tabItem {
                        Image(systemName: "book.closed.circle")
                        Text("View 2")
                    }
                    .tag(1)
                
                View3()
                    .tabItem {
                        Image(systemName: "person.crop.circle")
                        Text("View 3")
                    }
                    .tag(2)
            }
            //.navigationBarTitle("Custom Navigation")
        }
    }

}
