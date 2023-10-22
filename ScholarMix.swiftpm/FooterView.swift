//
//  FooterView.swift
//  ScholarMix
//
//  Created by meher on 10/21/23.
//

import SwiftUI

struct FooterView: View {
    @State private var isShowingMatch = false
    @State private var isMatchList = false
    var body: some View {
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
                    
                }
                NavigationLink("", destination: Sorted(), isActive: $isShowingMatch)
                
                Button(action: {
                    // ACTION
                    print("Opened Study Tab!")
                }) {
                    Image(systemName: "book.closed.circle")
                        .font(.system(size:50,weight: .heavy))
                        .padding(.vertical, 10)
                }
                
                Button(action: {
                    // ACTION
                    print("Opened Profile Tab!")
                }) {
                    Image(systemName: "person.crop.circle")
                        .font(.system(size:50, weight: .heavy))
                        .padding(.vertical, 10)
                }
                
                Spacer()
            }
        }
    }
}

struct FooterView_Previews: (PreviewProvider) {
    static var previews: some View {
        FooterView()
    }
}

/*
 #Preview {
 FooterView()
 }
 */
