//
//  View1.swift
//  ScholarMix
//
//  Created by meher on 10/22/23.
//

import Foundation
import SwiftUI

struct View1: View {
    var body: some View {
        if #available(iOS 16.0, *) {
            ZStack {
                Color(hue: 0.0, saturation: 0.0, brightness: 0.931)
                    .ignoresSafeArea()
                VStack {
                    Text("Top Scholars")
                        .foregroundColor(Color(hue: 0.33, saturation: 0.321, brightness: 0.609))
                        .font(.system(size: 50, weight: .bold))
                        .offset(x:-24 , y:25)
                    
                    ZStack {
                        Rectangle()
                            .frame(width: 350, height: 200)
                            .foregroundColor(Color(hue: 0.308, saturation: 0.287, brightness: 0.74))
                            .cornerRadius(10)
                        Image("beaba")
                        //.frame(width: 50, height: 30)
                            .resizable()
                            .frame(width: 75, height: 75)
                            .clipShape(Circle())
                            .offset(x: -130, y: -55)
                        Text("musa")
                            .foregroundColor(Color(red: 0.215, green: 0.229, blue: 0.277))
                            .font(.system(size: 35, weight: .bold))
                            .offset(x: -40, y: -75)
                        Text("99%")
                            .font(.system(size: 29, weight: .bold))
                            .foregroundColor(Color(hue: 1.0, saturation: 0.008, brightness: 0.26))
                            .offset(x: 43, y: -73)
                            .opacity(0.70)
                        Text("let's be study buddies!")
                            .foregroundColor(Color(red: 0.295, green: 0.313, blue: 0.378))
                            .font(.system(size: 12, weight: .bold))
                            .offset(x: -15, y: -50)
                            .italic()
                        Button("Accept") {}
                            .padding(.horizontal, 45)
                            .padding(.vertical, 10)
                            .background(Color(hue: 0.922, saturation: 0.196, brightness: 0.957))
                            .foregroundColor(Color.black)
                            .cornerRadius(7)
                            .font(.system(size: 15, weight: .bold))
                            .offset(x: -80, y:65)
                        Button("Pass") {}
                            .padding(.horizontal, 55)
                            .padding(.vertical, 10)
                            .background(Color(hue: 0.922, saturation: 0.151, brightness: 0.956))
                            .foregroundColor(Color.black)
                            .cornerRadius(7)
                            .font(.system(size: 15, weight: .bold))
                            .offset(x: 80, y:65)
                        ZStack {
                            Rectangle()
                                .frame(width: 108.0, height: 20.0)
                                .cornerRadius(3)
                                .offset(x: -35, y: -21)
                                .foregroundColor(Color(hue: 0.922, saturation: 0.196, brightness: 0.957))
                            Text("UM Dearborn")
                                .offset(x: -35, y: -21)
                                .font(.system(size: 15, weight: .bold))
                            
                        }
                        ZStack {
                            Rectangle()
                                .frame(width: 30.0, height: 20.0)
                                .cornerRadius(3)
                                .offset(x: 40, y: -21)
                                .foregroundColor(Color(hue: 0.922, saturation: 0.196, brightness: 0.957))
                            Text("CS")
                                .offset(x: 40, y: -21)
                                .font(.system(size: 15, weight: .bold))
                            
                        }
                    }
                    
                    ZStack {
                        Rectangle()
                            .frame(width: 350, height: 80)
                            .foregroundColor(Color(red: 0.695, green: 0.808, blue: 0.565))
                            .cornerRadius(10)
                        Image("lana")
                        //.frame(width: 50, height: 30)
                            .resizable()
                            .frame(width: 65, height: 65)
                            .clipShape(Circle())
                            .offset(x: -130)
                        Text("fatima")
                            .foregroundColor(Color(red: 0.215, green: 0.229, blue: 0.277))
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
                            .foregroundColor(Color(red: 0.6941176470588235, green: 0.807843137254902, blue: 0.5647058823529412))
                            .cornerRadius(10)
                        Image("taylor")
                            .resizable()
                            .frame(width: 65, height: 65)
                            .clipShape(Circle())
                            .offset(x: -130)
                        Text("jodi")
                            .foregroundColor(Color(red: 0.215, green: 0.229, blue: 0.277))
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
                        .background(Color(hue: 0.922, saturation: 0.151, brightness: 0.956))
                        .foregroundColor(Color.black)
                        .cornerRadius(7)
                        .font(.system(size: 25, weight: .bold))
                }
            }
        }
    }
}
