//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Moses Jean on 3/6/25.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    @State private var messageNumber = 0
    @State private var ImageNumber = -1
    @State private var soundNumber = 0
    @State private var audioPlayer: AVAudioPlayer!
    
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
                "You are OUTSTANDING!",
                "You are AMAZING!",
                "You are ROYALTY!",
                "you are SUPER",
                "You are a GENIUS!"
              ]
            
                messageNumber = nonRepeatingRandom(current: messageNumber, lowerB: 0, UpperB: messages.count-1)
                message = messages[messageNumber]
                
                ImageNumber = nonRepeatingRandom(current: ImageNumber, lowerB: 1, UpperB: 7)
                imageName = "PlaygroundImage\(ImageNumber)"
                
                soundNumber = nonRepeatingRandom(current: soundNumber, lowerB: 1, UpperB: 5)
                let soundName = "sound\(soundNumber)"
                Playsound(soundName: soundName)
                
                
                
              
                
              
                
            }
            .buttonStyle(.borderedProminent)
            .tint(.orange)
            .padding()
        }
    }
    
    func Playsound(soundName: String) {
        guard let soundFile = NSDataAsset(name: soundName) else {
            print("Could not find \(soundName)")
            return
        }
        do {
            audioPlayer = try AVAudioPlayer(data: soundFile.data)
            audioPlayer.play()
            audioPlayer.currentTime = 0
        }catch{
            print("ERROR: \(error.localizedDescription) cannot create audio player")
        }
    }
    
    func nonRepeatingRandom(current: Int, lowerB: Int, UpperB: Int) -> Int{
        var new = Int.random(in: lowerB...UpperB)
     
        
        while new == current{
            new = Int.random(in: lowerB...UpperB)
        }

        return new
        
        
    }
}
#Preview {
    ContentView()
}
