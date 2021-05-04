//
//  HomePageView.swift
//  GAME-22
//
//  Created by 吳庭愷 on 2021/4/30.
//

import SwiftUI
import AVFoundation
struct HomePageView: View {
    @StateObject var gameObject = GameObject()
    var body: some View {
        
        ZStack{
            
            Image("screen0")
                .resizable()
                .scaledToFill()
                .offset(x: 0, y: -12)
            
            Color("Color-5")
                //.frame(width: 300, height:45)
                .cornerRadius(10)
               // .scaledToFit()
                .frame(width: 300, height:54)
                .overlay(
                    Text("菇菇血腥版 99")
                        .fontWeight(.bold)
                        .font(.title)
                        .foregroundColor(.black)
                        .padding(10)
                    
                )
                .offset(x: 0, y: -260)
           
            Color("Color-5")
                //.frame(width: 300, height:45)
                .cornerRadius(10)
               // .scaledToFit()
                .frame(width: 200, height:154)
                
                .overlay(
                    VStack{
                        Button(action: {
                            gameObject.choosepage = true
                        }, label: {
                            Text("開始遊戲")
                              .foregroundColor(.black)
                              .bold()
                              .frame(minWidth: 0, maxWidth: .infinity)
                              .padding()
                              .foregroundColor(.white)
                              .background(LinearGradient(gradient: Gradient(colors: [Color("Darkgreen"), Color("Color-4")]), startPoint: .leading, endPoint: .trailing))
                                                                .cornerRadius(40)
                        })
                       // Text(String(gameObject.choosepage))
                       
                        Button(action: {}, label: {
                            Link("遊戲介紹", destination: URL(string: "https://reurl.cc/bzp0kl")!)
                                .foregroundColor(.black)
                                .font(.headline)
                                .padding()
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .background(LinearGradient(gradient: Gradient(colors: [Color("Darkgreen"), Color("Color-4")]), startPoint: .leading, endPoint: .trailing))
                                    .cornerRadius(40)
                        })
                    
                
                                    }
                    
                )
                .offset(x: 0, y: 200)
            
            
                    if gameObject.choosepage{
                        chooseView()
                    }}
        
        

    }
    
}
class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
    AVPlayer.setupBgMusic()
    AVPlayer.bgQueuePlayer.volume = 0.3
    AVPlayer.bgQueuePlayer.play()
        
        
        return true
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
