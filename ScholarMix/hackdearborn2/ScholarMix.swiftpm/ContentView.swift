//
//  ContentView.swift
//  ScholarMix
//
//  Created by meher on 10/21/23.
//

import SwiftUI
import Charts

struct ContentView: View {
    let matches = matchList
    @State private var isShowingMatch = false
    @State private var isMatchList = false
    
    var body: some View {
        if #available(iOS 16.0, *) {
            List {
                ForEach(matches, id: \.self) {match in
                    NavigationLink(destination: Text(match)) {
                        Image(systemName: "person.crop.circle.fill")
                        Text(match)
                    }.padding(.vertical, 50)
                        .background(Color(hue: 0.107, saturation: 0.226, brightness: 0.934))
                }
            }
            Spacer()
            NavigationView {
                HStack(spacing: 50) {
                    
                    Spacer ()
                    
                    Button(action: {
                        // ACTION
                        print("Opened Match Tab!")
                        isShowingMatch = true
                    }) {
                        Image(systemName: "graduationcap.circle")
                            .font(.system(size:50, weight: .heavy))
                            .padding(.vertical, 10)
                            .foregroundColor(Color(red: 0.5843137254901961, green: 0.6274509803921569, blue: 0.4549019607843137))
                        
                    }
                    NavigationLink("", destination: Sorted(), isActive: $isShowingMatch)
                    
                    Button(action: {
                        // ACTION
                        print("Opened Study Tab!")
                        isMatchList = true
                    }) {
                        Image(systemName: "book.closed.circle")
                            .font(.system(size:50,weight: .heavy))
                            .padding(.vertical, 10)
                            .foregroundColor(Color(red: 0.5843137254901961, green: 0.6274509803921569, blue: 0.4549019607843137))
                    }
                    NavigationLink("", destination: ContentView(), isActive: $isMatchList)
                    
                    Button(action: {
                        // ACTION
                        print("Opened Profile Tab!")
                    }) {
                        Image(systemName: "person.crop.circle")
                            .font(.system(size:50, weight: .heavy))
                            .padding(.vertical, 10)
                            .foregroundColor(Color(red: 0.5843137254901961, green: 0.6274509803921569, blue: 0.4549019607843137))
                    }
                    
                    Spacer()
                }
                .background(Color(red: 0.9137254901960784, green: 0.9215686274509803, blue: 0.8901960784313725))
            }
        }
    }
}
