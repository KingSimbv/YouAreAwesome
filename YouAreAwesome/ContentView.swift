//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Moses Jean on 3/6/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageString = ""
    @State private var imageNumber = 0
    @State private var messageNumber = 0
    var body: some View {
        VStack {
            Spacer()
            
            Image(imageString)
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
              let messages = ["You are outstanding!", "You are amazing!", "You are royalty"]
             
              
                imageNumber = (imageNumber >= 3 ? 0 : imageNumber)
                imageNumber += 1
                print(imageNumber)
                imageString = "PlaygroundImage" + String(imageNumber * 2)
                message = messages[messageNumber]
                messageNumber += 1
                messageNumber = (messageNumber > 2 ? 0 : messageNumber)
               
                
                
                
                
               
                    
                
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
