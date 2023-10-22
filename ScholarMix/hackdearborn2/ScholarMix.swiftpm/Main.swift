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
                    .offset(x:-24 , y:25)
                
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
                    Text("99%")
                        .font(.system(size: 27, weight: .bold))
                        .foregroundColor(Color(hue: 1.0, saturation: 0.008, brightness: 0.26))
                        .offset(x: 40, y: -73)
                        .opacity(0.70)
                    Text("let's be study buddies!")
                        .font(.system(size: 12, weight: .semibold))
                        .fontWeight(.heavy)
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
                    ZStack {
                        Rectangle()
                            .frame(width: 108.0, height: 20.0)
                            .cornerRadius(3)
                            .offset(x: -35, y: -21)
                            .foregroundColor(Color.white)
                        Text("UM Dearborn")
                            .offset(x: -35, y: -21)
                            .font(.system(size: 15, weight: .bold))
                        
                    }
                    ZStack {
                        Rectangle()
                            .frame(width: 30.0, height: 20.0)
                            .cornerRadius(3)
                            .offset(x: 40, y: -21)
                            .foregroundColor(Color.white)
                        Text("CS")
                            .offset(x: 40, y: -21)
                            .font(.system(size: 15, weight: .bold))
                        
                    }
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
                        .font(.system(size: 30, weight: .bold))
                        .offset(x: -42)
                    Text("97%")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(Color(hue: 1.0, saturation: 0.008, brightness: 0.26))
                        .offset(x: 42)
                        .opacity(0.70)
                    
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
                        .font(.system(size: 30, weight: .bold))
                        .offset(x: -62)
                    Text("92%")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(Color(hue: 1.0, saturation: 0.008, brightness: 0.26))
                        .offset(x: 5)
                        .opacity(0.70)
                    
                }
                
                Button ("Mix it Up!"){}
                    .padding(.horizontal, 15.0)
                    .padding(.vertical, 13.0)
                    .background(Color(red: 0.809, green: 0.842, blue: 0.709))
                    .foregroundColor(Color.black)
                    .cornerRadius(7)
                    .font(.system(size: 25, weight: .bold))
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
        Color.gray
        VStack {
            Text("Test")
        }
        //.background(Color.gray)
    }
}

    
struct Main: View {
    @State private var selectedTab = 2
        
    var body: some View {
        ZStack {
            //Color.yellow
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
            .background(Color.yellow)
            .navigationBarTitle("Custom Navigation")
        }
    }

}
