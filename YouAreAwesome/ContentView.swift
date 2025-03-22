//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Moses Jean on 3/6/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    @State private var numberOfImages = 7
    @State private var LastImageNumber = -1
    @State private var LastMessageNumber = -1
    
    var body: some View {
        VStack {
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .clipShape(RoundedRectangle(cornerRadius: 50))
                .shadow(radius: 30)
               
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
                .foregroundStyle(.red)
            
            Spacer()
            
            Button("click me!")
            {
              let messages =
                [
                "You are outstanding!",
                "You are AMAZING!",
                "You are ROYALTY!",
                "you are SUPER",
                "You are a GENIUS!"
              ]
                
                var messageNumber = Int.random(in: 0...messages.count-1)
                
                while messageNumber == LastMessageNumber {
                    messageNumber = Int.random(in: 0...messages.count-1)
                }
                
                message = messages[messageNumber]
                
                
                var imageNumber = Int.random(in: 1...numberOfImages)
                
                while imageNumber == LastImageNumber {
                    imageNumber = Int.random(in: 1...numberOfImages)
                }
                
                imageName = "PlaygroundImage\(imageNumber)"
                
                LastMessageNumber = messageNumber
                
                LastImageNumber = imageNumber
            
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
