//
//  ContentView.swift
//  koreatechgram
//
//  Created by 정태훈 on 2023/03/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach((0...20), id: \.self) { index in
                    NavigationLink(destination: DetailContentView(index: index)) {
                        ContentItem()
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
