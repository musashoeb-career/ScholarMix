//
//  Main.swift
//  ScholarMix
//
//  Created by meher on 10/21/23.
//

import SwiftUI

struct View1: View {
    var body: some View {
        if #available(iOS 16.0, *) {
            VStack {
                Text("Top Scholars")
                    .foregroundColor(Color.black)
                    .font(.system(size: 50, weight: .bold))
                
                ZStack {
                    Rectangle()
                        .frame(width: 350, height: 200)
                        .foregroundColor(Color(red: 0.807843137254902, green: 0.8431372549019608, blue: 0.7098039215686275))
                        .cornerRadius(7)
                    Image("beaba")
                    //.frame(width: 50, height: 30)
                        .resizable()
                        .frame(width: 75, height: 75)
                        .clipShape(Circle())
                        .offset(x: -130, y: -55)
                    Text("musa")
                        .font(.system(size: 35, weight: .bold))
                        .offset(x: -40, y: -75)
                    Text("let's be study buddies!")
                        .font(.system(size: 12, weight: .semibold))
                        .offset(x: -15, y: -50)
                        .italic()
                    Button("Accept") {}
                        .padding(.horizontal, 45)
                        .padding(.vertical, 10)
                        .background(Color(hue: 0.001, saturation: 0.438, brightness: 0.874))
                        .foregroundColor(Color.white)
                        .cornerRadius(7)
                        .font(.system(size: 15, weight: .bold))
                        .offset(x: -80, y:65)
                    Button("Pass") {}
                        .padding(.horizontal, 55)
                        .padding(.vertical, 10)
                        .background(Color(hue: 0.25, saturation: 0.343, brightness: 0.768))
                        .foregroundColor(Color.white)
                        .cornerRadius(7)
                        .font(.system(size: 15, weight: .bold))
                        .offset(x: 80, y:65)
                }
                
                ZStack {
                    Rectangle()
                        .frame(width: 350, height: 80)
                        .foregroundColor(Color(red: 0.9137254901960784, green: 0.9215686274509803, blue: 0.8901960784313725))
                        .cornerRadius(7)
                    Image("lana")
                    //.frame(width: 50, height: 30)
                        .resizable()
                        .frame(width: 65, height: 65)
                        .clipShape(Circle())
                        .offset(x: -130)
                    Text("fatima")
                        .font(.system(size: 20, weight: .bold))
                        .offset(x: -60, y: -20)
                    
                }
                
                ZStack {
                    Rectangle()
                        .frame(width: 350, height: 80)
                        .foregroundColor(Color(red: 0.9137254901960784, green: 0.9215686274509803, blue: 0.8901960784313725))
                        .cornerRadius(7)
                    Image("taylor")
                    //.frame(width: 50, height: 30)
                        .resizable()
                        .frame(width: 65, height: 65)
                        .clipShape(Circle())
                        .offset(x: -130)
                    Text("jodi")
                        .font(.system(size: 20, weight: .bold))
                        .offset(x: -71, y: -20)
                    
                }
                
                Button ("Mix it Up!"){}
                    .padding(.horizontal, 15.0)
                    .padding(.vertical, 17.0)
                    .background(Color(red: 0.809, green: 0.842, blue: 0.709))
                    .foregroundColor(Color.white)
                    .cornerRadius(7)
                    .font(.system(size: 15, weight: .bold))
            }
            //.background(Color(hue: 0.085, saturation: 0.0, brightness: 0.955))
        }
    }
}
    
struct View2: View {
    let matches = matchList
    var body: some View {
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
}

struct View3: View {
    var body: some View {
        VStack {
            Text("Test")
                .padding()
        }
    }
}

    
struct Main: View {
    @State private var selectedTab = 0
        
    var body: some View {
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
            .navigationBarTitle("Custom Navigation")
    }

}
