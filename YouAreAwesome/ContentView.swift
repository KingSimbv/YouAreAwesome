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
    @State private var numberOfImages = 7
    @State private var LastImageNumber = -1
    @State private var LastMessageNumber = -1
    @State private var numberOfSounds = 5
    @State private var lastSoundNumber = -1
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
            
                var soundNumber = Int.random(in: 1...5)
                while soundNumber == lastSoundNumber {
                    soundNumber = Int.random(in: 1...5)
                }
                
                lastSoundNumber = soundNumber
                
                let soundName = "sound\(soundNumber)"
                
                guard let soundFile = NSDataAsset(name: soundName) else {
                    print("Could not find \(soundName)")
                    return
                }
                do {
                    audioPlayer = try AVAudioPlayer(data: soundFile.data)
                    audioPlayer.play()
                } catch {
                    print("ERROR: \(error.localizedDescription) creatin audio player")
                    return
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
