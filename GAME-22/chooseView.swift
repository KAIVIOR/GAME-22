//
//  chooseView.swift
//  GAME-22
//
//  Created by 吳庭愷 on 2021/5/3.
//

import SwiftUI
import AVFoundation
struct cardback: View {
    
    var car_back : Back
    var body: some View{
        //Image("poker")
           // .resizable()
        Color("Color-3")
            .frame(width: 62, height:84)
            .cornerRadius(10)
           // .scaledToFit()
            .frame(width: 64, height: 85)
            .background(Color.black)
            .cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black, lineWidth: 3)
                     )
            .overlay(Image("\(car_back.back)")
                        .resizable()
                        .frame(width: 63, height:84)
                        .cornerRadius(10)
                        .scaledToFit())
        
        
    }
}
struct chooseView: View {
    @StateObject var gameObject = GameObject()
    @State private var much: CGFloat = 500
    @State private var money = 500
    @State private var choose = false
    @State private var screen_number = 1
    @State private var b1 = backs[0]
    @State private var b2 = backs[1]
    @State private var b3 = backs[2]
    @State private var b4 = backs[3]
    @State private var b5 = backs[4]
    var body: some View {
        NavigationView{
        ZStack{
            Color("Color-5").edgesIgnoringSafeArea(.all)
            VStack{
                Text("請選擇想要使用的卡背")
                    .bold()
                    .font(.title)
                    //.offset(x: 0, y: -360)
                    .padding()
                    
                HStack{
                   
                    if(screen_number == 1){
                    }

                    Button(action: {
                        screen_number = 1
                        gameObject.cardback = 1
                    }, label: {
                        if(screen_number == 1){
                            cardback(car_back: b1)
                                .overlay(                        RoundedRectangle(cornerRadius: 10)
                                                                    .stroke(Color.red, lineWidth: 3.5)
                                                                    .frame(width: 63, height:84)
)
                        }
                        else{
                            cardback(car_back: b1)
                        }
                    })
                    Button(action: {
                        screen_number = 2
                        gameObject.cardback = 2
                    }, label: {
                        if(screen_number == 2){
                            cardback(car_back: b2)
                                .overlay(                        RoundedRectangle(cornerRadius: 10)
                                                                    .stroke(Color.red, lineWidth: 3.5)
                                                                    .frame(width: 63, height:84)
)
                        }
                        else{
                            cardback(car_back: b2)
                        }
                    })
                    Button(action: {
                        screen_number = 3
                        gameObject.cardback = 3
                    }, label: {
                        if(screen_number == 3){
                            cardback(car_back: b3)
                                .overlay(                        RoundedRectangle(cornerRadius: 10)
                                                                    .stroke(Color.red, lineWidth: 3.5)
                                                                    .frame(width: 63, height:84)
)
                        }
                        else{
                            cardback(car_back: b3)
                        }
                    })
                    Button(action: {
                        screen_number = 4
                        gameObject.cardback = 4
                    }, label: {
                        if(screen_number == 4){
                            cardback(car_back: b1)
                                .overlay(                        RoundedRectangle(cornerRadius: 10)
                                                                    .stroke(Color.red, lineWidth: 3.5)
                                                                    .frame(width: 63, height:84)
)
                        }
                        else{
                            cardback(car_back: b4)
                        }
                    })
                    Button(action: {
                        screen_number = 5
                        gameObject.cardback = 5
                    }, label: {
                        if(screen_number == 5){
                            cardback(car_back: b5)
                                .overlay(                        RoundedRectangle(cornerRadius: 10)
                                                                    .stroke(Color.red, lineWidth: 3.5)
                                                                    .frame(width: 63, height:84)
)
                        }
                        else{
                            cardback(car_back: b5)
                        }
                    })
                    
                }
                .padding(20)
                Text("請選擇想要使用用籌碼數量")
                    .bold()
                    .font(.title)
                    //.offset(x: 0, y: -360)
                    .padding()
                Slider(value: $much, in: 500...1500, step: 50, minimumValueLabel: Text("500"), maximumValueLabel: Text("1500"))
                {
                  
                }.accentColor(.orange)
                Text("所選擇籌碼數量:\(Int(much))")
                    .bold()
                    .font(.title)
                    .padding(50)
               
                Button(action: {
                    gameObject.gamepage = true
                    money = Int(much)
                }, label: {
                    Text("開始遊戲")
                        .foregroundColor(.black)
                        .font(.headline)
                        .padding()
                        .frame(minWidth: 0, maxWidth: 300)
                        .background(LinearGradient(gradient: Gradient(colors: [Color("Darkgreen"), Color("Lightgreen")]), startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(40)
                })
                
                }.offset(x: 0, y: -200)
           
            if (gameObject.gamepage){
                PlayerView(money: $money, screen_number: $screen_number)
            }
            }
        }
    }
}

struct chooseView_Previews: PreviewProvider {
    static var previews: some View {
        chooseView()
    }
}
