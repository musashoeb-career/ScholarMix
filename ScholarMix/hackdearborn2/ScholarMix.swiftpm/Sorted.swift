//
//  SortedView.swift
//  ScholarMix
//
//  Created by meher on 10/21/23.
//

import Foundation
import SwiftUI


struct Sorted: View {
    @State private var isShowingMatch = false
    @State private var isMatchList = false
    
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationView() {
                VStack {
                    Text("Top Scholars")
                        .foregroundColor(Color.black)
                        .font(.system(size: 50, weight: .bold))
                    ZStack {
                        Rectangle()
                            .frame(width: 350, height: 200)
                            .foregroundColor(Color(red: 0.807843137254902, green: 0.8431372549019608, blue: 0.7098039215686275))
                            .cornerRadius(7)
                        Text("1")
                            .foregroundColor(Color.black)
                            .font(.system(size: 20, weight: .bold))
                            .multilineTextAlignment(.leading)
                        //.offset()
                    }
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
                    Spacer()
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
}

struct Sorted_Previews: (PreviewProvider) {
    static var previews: some View {
        Sorted()
    }
}
