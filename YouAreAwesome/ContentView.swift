//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Moses Jean on 3/6/25.
//

import SwiftUI

struct ContentView: View {
    @State var message = "I am a programmer"
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
            Button("Click me!")
            {
                message = "Awesome!"
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
