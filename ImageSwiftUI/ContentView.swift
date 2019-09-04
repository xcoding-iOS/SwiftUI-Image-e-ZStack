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
                    .blur(radius: 10, opaque: true)
                
                Image("sansa")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                .shadow(radius: 10)
            }
        
            
            VStack(alignment: .leading) {
                HStack {
                    Image("stark")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                    
                    VStack(alignment: .leading) {
                        Text("Sansa Stark")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        
                        Text("Lady of Winterfell")
                            .font(.headline)
                    }
                }
                
                Text("Sansa Stark is a fictional character created by American author George R. R. Martin. She is a prominent character in Martin's award-winning A Song of Ice and Fire series.")
                    .lineLimit(4)
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
        ContentView()
    }
}
#endif
