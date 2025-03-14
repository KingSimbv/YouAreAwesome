//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Moses Jean on 3/6/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "I am a programmer"
    @State private var imageString = ""
    var body: some View {
        VStack {
            Spacer()
            
            Image(systemName: imageString)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
                .frame(height: 30)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
                .foregroundStyle(.red)
            
            Spacer()
            
            Button("click me!")
            {
                if message == "You are awesome"
                {
                    message = "You are Great!"
                    imageString = "hand.thumbsup"
                }
                else if message == "You are Great!"
                {
                    message = "You are awesome"
                    
                    imageString = "wand.and.stars"
                }
                else{
                    message = "You are Great!"
                    
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.orange)
            .padding()
        }
    }
}
#Preview {
    ContentView()
}
