//
//  ContentView.swift
//  ImageSwiftUI
//
//  Created by Giuseppe Sapienza on 10/06/2019.
//  Copyright © 2019 Giuseppe Sapienza. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        VStack {
            ZStack {
                Image("sansa")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .relativeSize(width: 1, height: 1)
                    .clipped()
                    .blur(radius: 10, opaque: true)
                
                Image("sansa")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .relativeSize(width: 0.4, height: 0.4)
                    .clipShape(Circle())
                    .shadow(radius: 10)
            }
            
            VStack(alignment: .leading) {
                Text("Sansa Stark")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("Lady of Winterfell")
                    .font(.headline)
                
                Text("Sansa Stark is a fictional character created by American author George R. R. Martin. She is a prominent character in Martin's award-winning A Song of Ice and Fire series.")
                    .lineLimit(nil)
                    .padding(.top)
                
                }
                .padding()
            
            Spacer()
        }
        .edgesIgnoringSafeArea(.top)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            
            ContentView()
                .previewDevice("iPad Pro (9.7-inch)")
        }
    }
}
#endif
