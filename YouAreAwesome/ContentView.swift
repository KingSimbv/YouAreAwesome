//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Moses Jean on 3/6/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text("you are awesome!")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
