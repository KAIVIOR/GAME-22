//
//  game-house.swift
//  GAME-2
//
//  Created by User15 on 2021/3/10.
//

import SwiftUI
import AVFoundation
var audioPlayer: AVAudioPlayer?


func playSound1() {

    let path = Bundle.main.path(forResource: "12321.mp3", ofType:nil)!
    let url = URL(fileURLWithPath: path)

    do {
        audioPlayer = try AVAudioPlayer(contentsOf: url)
        audioPlayer?.play()
    } catch {
        print("Could not find file")

    }
}

struct game_house: View {
    @State private var showGameOverView = false
    let a = ["A","B","C","D"]
    var body: some View {
        VStack{
            Button(action: {
                showGameOverView = true
                playSound1()
            }, label: {
                Text("Button")
                    .font(.largeTitle)
            })
            .sheet(isPresented: $showGameOverView, content: {
                gameover(showSecondPage:$showGameOverView)
                        })
        }
       
    }
}

struct game_house_Previews: PreviewProvider {
    static var previews: some View {
        game_house()
    }
}
