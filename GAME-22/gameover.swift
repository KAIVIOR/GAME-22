//
//  gameover.swift
//  GAME-2
//
//  Created by User15 on 2021/3/10.
//

import SwiftUI
import AVFoundation
struct gameover: View {
    @Binding var showSecondPage: Bool
    
    var body: some View {
      //  Color("Color").edgesIgnoringSafeArea(.all)
        ZStack{
        Color("Color").edgesIgnoringSafeArea(.all)
        Image("ima")
            .resizable()
            .scaledToFit()
     
        }
        .overlay(
            Button(action: {
                showSecondPage = false
                
            }, label: {
                Image(systemName: "xmark.circle.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding(20)
            }),alignment: .topTrailing
        
        )
    }
}

struct gameover_Previews: PreviewProvider {
    static var previews: some View {
        gameover(showSecondPage: .constant(true))
    }
}
