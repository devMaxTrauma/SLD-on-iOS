//
//  ContentView.swift
//  SLD on iOS
//
//  Created by 최지오 on 9/22/24.
//

import SwiftUI

struct ContentView: View {
    let icons = ["ButtonIcons/GreenButton", "ButtonIcons/YellowButton", "ButtonIcons/GrayButton"]
    @State var selectedIconIndex: Int = 0
    var body: some View {
        VStack {
            TabView(selection: $selectedIconIndex){
                ForEach(0..<icons.count){index in
                    Button(action: {
                        print("\(index)")
                    }){
                        Image(icons[index])
                            .frame(width: 200, height: 200)
                    }
                }
            }
            .tabViewStyle(PageTabViewStyle())
//            Button {
//                
//            } label: {
//                Image("ButtonIcons/GreenButton")
//            }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
