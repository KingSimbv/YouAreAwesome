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
             
             message = messages[Int.random(in: 0...messages.count-1)]
            
            imageName = "PlaygroundImage\(Int.random(in: 1...numberOfImages))"
               
               
                
                
                
                
               
                    
                
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
