//
//  ContentView.swift
//  DesignCode
//
//  Created by David Nguyen on 4/15/20.
//  Copyright © 2020 David Nguyen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackCardView()
                .offset(x: 0, y: -40)
                .offset(x: 0, y: -40)
                .scaleEffect(0.9)
            
            BackCardView()
                .offset(x: 0, y: -20)
                .scaleEffect(0.95)

            CardView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("David N.")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    Text("Student")
                        .foregroundColor(Color("accent"))
                }
                Spacer()
                Image("Logo1")
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)
            Spacer()
            Image("Card1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 110, alignment: .top)
        }
        .frame(width: 340.0, height: 220.0)
        .background(Color.black)
        .cornerRadius(20)
        .shadow(radius: 20)
    }
}

struct BackCardView: View {
    var body: some View {
        VStack {
            Spacer()
        }
        .frame(width: 300.0, height: 220)
        .background(Color.blue)
        .cornerRadius(20)
        .shadow(radius: 20)
        .offset(x: 0, y: -20)
    }
}
