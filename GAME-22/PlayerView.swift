//
//  PlayerView.swift
//  GAME-22
//
//  Created by User11 on 2021/3/23.
//
import AVFoundation
import SwiftUI
var card = [0,0,0,0,0]
enum UIImageOrientation : Int {
    case Up //0：默认方向
    case Down //1：180°旋转
    case Left //2：逆时针旋转90°
    case Right //3：顺时针旋转90°
    case UpMirrored //4：水平翻转
    case DownMirrored //5：水平翻转
    case LeftMirrored //6：垂直翻转
    case RightMirrored //7：垂直翻转
}
struct poker_card: View {
    var card: Card1
    var body: some View{
        Image("\(card.rank)_of_\(card.suit)")
            .resizable()
            .frame(width: 60, height:80)
            .scaledToFit()
            .frame(width: 64.8, height: 86.4)
            .background(Color.white)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black, lineWidth: 1)
            )
    }
}
struct player1: View {
    var card: Card1
    var body: some View{
        Image("fire")
            .resizable()
            .frame(width: 60, height:80)
            .scaledToFit()
            .frame(width: 64.8, height: 86.4)
            .background(Color.white)
            .cornerRadius(10)
           
    }
}
struct model: View {
    @Binding var screen_number: Int
    var body: some View{
        if(screen_number == 1){
            Image("screen0")
                .resizable()
                .scaledToFill()
                .frame(width: 62, height:84)
                .cornerRadius(10)
               // .scaledToFit()
                .frame(width: 64.8, height: 86.4)
                .background(Color.black)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 1)
                         )
        }
        else if(screen_number == 2){
            Image("screen1")
                .resizable()
                .scaledToFill()
                .frame(width: 62, height:84)
                .cornerRadius(10)
               // .scaledToFit()
                .frame(width: 64.8, height: 86.4)
                .background(Color.black)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 1)
                         )
        }
        else if (screen_number == 3){
            Image("screen2")
                .resizable()
                .scaledToFill()
                .frame(width: 62, height:84)
                .cornerRadius(10)
               // .scaledToFit()
                .frame(width: 64.8, height: 86.4)
                .background(Color.black)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 1)
                         )
        }
        else if (screen_number == 4){
            Image("screen3")
                .resizable()
                .scaledToFill()
                .frame(width: 62, height:84)
                .cornerRadius(10)
               // .scaledToFit()
                .frame(width: 64.8, height: 86.4)
                .background(Color.black)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 1)
                         )
        }
        else if(screen_number == 5){
            Image("screen4")
                .resizable()
                .scaledToFill()
                .frame(width: 62, height:84)
                .cornerRadius(10)
               // .scaledToFit()
                .frame(width: 64.8, height: 86.4)
                .background(Color.black)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 1)
                         )
        }
    }
}


struct PlayerView: View {
    @Binding var money : Int
    
    var dingPlayer: AVPlayer { AVPlayer.sharedDingPlayer }
    var spinPlayer: AVPlayer { AVPlayer.sharedSpinPlayer }
    @State private var count1 = true
    @State private var count2 = true
    @State private var count3 = true
    @State var card = cards.randomElement()!
    @State var card0 = cards.randomElement()!
    @State var card1 = cards.randomElement()!
    @State var card2 = cards.randomElement()!
    @State var card3 = cards.randomElement()!
    @State var card4 = cards.randomElement()!
    
    //robot numebr
    @State var robot1_numebr = 0
    //打出來的牌是什麼
    @State var now_card = cards[0]
    //robot 1
    @State private var bot1 = cards.randomElement()!
    @State private var bot2 = cards.randomElement()!
    @State private var bot3 = cards.randomElement()!
    //可以繼續走(選擇10 or -10 走下去)
    @State private var canrunn = true
    //顏色
    @State private var  menu = 1
    //順位
    @State private var player = 0
    //測試機器人的牌是啥
    @State private var  testing = " "
    @State private var  testing2 = " "
    @State private var  testing3 = " "
    
    @State private var item = 0
    //99的數字代表
    @State private var  texting = 0
    //決定加 10 或減 10
    @State private var SorA10 = false
    //決定加１或加 11
    @State private var SorAA = false
    
    //數字太大了
    @State private var alert = false
    
    //機器人１ 要動
    //A 一開始的判定
    @State private var AAlert = false
    //Pass 使用提醒
    @State private var PassAlert = false
    //當我還在選擇時 機器人不可以偷動
    @State private var stop_bot = true
    //順時針 = true , 逆時針 = false
    @State private var clockwise = true
    //機器人輸掉遊戲
    @State private var bot_alter = false
    
    @State private var m1 = false
    @State private var m2 = false
    @State private var m3 = false
    
    //player1
    @State private var player1 = true
    //player2
    @State private var player2 = true
    //player3
    @State private var player3 = true

    @State private var winner = false
    @State private var unavailable = false
    @State private var countunavailable = 0//= [0, 0, 0]
    
    
    
    //whether is your turn or not
    @State var canPlay = true
    //whether is player1 turn or not
    @State var player1canPlay = false
    //whether is player2 turn or not
    @State var player2canPlay = false
    //whether is player3 turn or not
    @State var player3canPlay = false
    @State var card_bot = cards[5]
    @State var time = 1
    //whether the game start or not
    @State private var started = true
    //動畫
    @State private var show = false
    //stop pass
    @State private var stop_pass = false
    //旋轉動畫
    @State private var rotateDegree: Double = 0
    //rotate
    @State private var rotat: CGFloat = 180
    
    @State private var countershow = false
    
    @State private var pointer = false
    @State private var robot_number = 0
    @State private var showGameOverView = false
    
    //3的跳過
    @State private var jump = false

    @State private var restart = false
    
    @StateObject var gameObject = GameObject()
    
    @State private var backs_screen = ["screen0", "screen1","screen2","screen3","screen4",]
    @Binding var screen_number: Int
    func Pass_delay_false(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
           
          PassAlert = false

        }
    }
    func show_arrow(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
           
          countershow = false

        }
    }

    func robot1(){
            
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.4) {
        card_bot = cards.randomElement()!
        robot_played(rank: card_bot.rank, suit: card_bot.suit)

          
                if bot_alter {
                bot_alter = false
                player1 = false
                next()
                }
                else{
                now_card = card_bot
                //testing = card.rank
                    next()
                }
        
        

        }
    }
    
    func robot2(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.4) {
           card_bot = cards.randomElement()!
           robot_played(rank: card_bot.rank, suit: card_bot.suit)

          
                if bot_alter {
                    bot_alter = false
                    player2 = false
                    next()
                }
                else{
                   now_card = card_bot
                   //testing = card.rank
                    next()
                }

        }
    }
    
    func robot3(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.4) {
           card_bot = cards.randomElement()!
           robot_played(rank: card_bot.rank, suit: card_bot.suit)
//bot_alter = ture
            
            
                if bot_alter {
                    bot_alter = false
                    player3 = false
                    
                }
            if !player3{
                next()
            }
                else{
                   now_card = card_bot
                   //testing = card.rank
                    next()
                }

        }
    }
    
 
    func play(){
        rotateDegree = -360
    }
    func robot_played(rank: String, suit: String){
        let ten = [10,-10]
        if rank == "A"{
            //A：可以事前約定或由出牌者決定當成加1點或11點[1]
                if(AAlert == false){//要求＋1
                    if texting > 98{
                        bot_alter = true
                        money += 200
                       
                    }
                    else{
                        texting += 1
                    }
                }
                else if(AAlert == true){//要求＋11
                    if texting > 88{
                        bot_alter = true
                        money += 200
                       
                    }
                    else{
                        texting += 11
                    }
              }
        }
        else if rank == "2"{
            if texting > 97{
                bot_alter = true
                money += 200
               
            }
            else{
                texting += 2
            }
        }
        else if rank == "3"{
            //3：加3後跳過下一輪的出牌權。
            if texting > 96{
                bot_alter = true
                money += 200
                
            }
            else{
                texting += 3
            }
        }
        else if rank == "4"{
            //4：迴轉。
            countershow = true
            clockwise = !clockwise
            show_arrow()
        }
        else if rank == "5"{
            texting += 0 // pointer
            
        }
        else if rank == "6"{
            if texting > 93{
                bot_alter = true
                money += 200
               
            }
            else{
                texting += 6
            }
        }
        else if rank == "7"{
            if texting > 92{
                bot_alter = true
                money += 200
                
            }
            else{
                texting += 7
            }
        }
        else if rank == "8"{
            if texting > 91{
                bot_alter = true
                money += 200
               
            }
            else{
                texting += 8
            }
        }
        else if rank == "9"{
            texting = 99
        }
        else if rank == "10"{
            if texting > 89{
                texting -= 10
            }
            else if texting < 10{
                texting += 10
            }
            else{
                robot_number = ten.randomElement()!
                texting += robot1_numebr
            }
        }
        else if rank == "J"{
            //J：加10。
            if texting > 89{
                bot_alter = true
                money += 200
                
            }
            else{
                texting += 10
            }

        }
        else if rank == "Q"{
            //Q：加10。
            if texting > 89{
                bot_alter = true
                money += 200
               
            }
            else{
                texting += 10
            }

             }
        else if rank == "K"{
            PassAlert = true
            
            Pass_delay_false()
           
        }
    }
    
    func played(rank: String, suit: String){
     
        //showplayAlert == 告訴你 你已經超過99了
        if rank == "A"{
            if(AAlert == false){//要求＋1
                if texting > 98{
                    alert = true
                    money -= 400
                    if(money < 0){
                        showGameOverView = true
                    }
                }
                else{
                    texting += 1
                }
            }
            else if(AAlert == true){//要求＋11
                if texting > 88{
                    alert = true
                    money -= 400
                    if(money < 0){
                        showGameOverView = true
                    }
                }
                else{
                    texting += 11
                }
            }
        }
        else if rank == "2"{
            if texting > 97{
                alert = true
            }
            else{
                texting += 2
            }
        }
        else if rank == "3"{
            if texting > 96{
                alert = true
                money -= 400
                if(money < 0){
                    showGameOverView = true
                }
            }
            else{
                texting += 3
                jump = true
            }
        }
        else if rank == "4"{
            countershow = true
            clockwise = !clockwise
            show_arrow()
            
        }
        else if rank == "5"{
            texting += 0 // pointer
            pointer = true
            stop_bot = false

        }
        else if rank == "6"{
            if texting > 93{
                alert = true
                money -= 400
                if(money < 0){
                    showGameOverView = true
                }
            }
            else{
                texting += 6
            }
        }
        else if rank == "7"{
            if texting > 92{
                alert = true
                money -= 400
                if(money < 0){
                    showGameOverView = true
                }
            }
            else{
                texting += 7
            }
        }
        else if rank == "8"{
            if texting > 91{
                alert = true
                money -= 400
                if(money < 0){
                    showGameOverView = true
                }
            }
            else{
                texting += 8
            }
        }
        else if rank == "9"{
            texting = 99
        }
        else if rank == "10"{//+10 or -10
            if texting > 89{
                texting -= 10
            }
            else if texting < 10{
                texting += 10
            }
            else{
                SorA10 = true
                stop_bot = false
            }
        }
        else if rank == "J"{//+10
            if texting > 89{
                alert = true
                money -= 400
                if(money < 0){
                    showGameOverView = true
                }
            }
            else {
                texting += 10
            }
        }
        else if rank == "Q"{//+10
            if texting > 89{
                alert = true
                money -= 400
                if(money < 0){
                    showGameOverView = true
                }
            }
            else {
                texting += 10
            }
        }
        else if rank == "K"{//pass
            texting += 0
            PassAlert = true
            Pass_delay_false()
        }
    }
  
     func next() {
        
            if !clockwise{
                if (player1canPlay == true && player1 == false){
                    player1canPlay = false
                    player2canPlay = true
                    robot2()
                 }
                else if (player2canPlay == true && player2 == false){
                    player2canPlay = false
                    player3canPlay = true
                    robot3()
                   // next()
                 }
                else if (player3canPlay == true && player3 == false){
                   player3canPlay = false
                   canPlay = true
                   
                   
                   //next()
               }//player3 = false,
             
                //player1canPlay = ture && player1 = false
               
                //my vision
                else if player1 && canPlay{
                    player1canPlay = true
                    robot1()
                    canPlay = false
                }
                else if player2 && canPlay{
                    player2canPlay = true
                    robot2()
                    canPlay = false
                }
                else if player3 && canPlay{
                    player3canPlay = true
                    robot3()
                    canPlay = false
                }
                //player1's vision
                else if player2 && player1canPlay{
                    player2canPlay = true
                    robot2()
                    player1canPlay = false
                }
                else if player3 && player1canPlay{
                    player3canPlay = true
                    robot3()
                    player1canPlay = false
                }
                else if started && player1canPlay{
                    player3canPlay = true
                    robot3()
                    player1canPlay = false
                }
                //player2's vision
                else if player3 && player2canPlay{
                    player3canPlay = true
                    robot3()
                    player2canPlay = false
                }
                else if started && player2canPlay{
                    canPlay = true
                    robot3()
                    player2canPlay = false
                }
                else if player3canPlay{
                    canPlay = true
                    player3canPlay = false
                }
            }
            else{
                
                 if (player3canPlay == true && player3 == false){
                    player3canPlay = false
                    player2canPlay = true
                    robot2()
                    
                    //next()
                }//player3 = false,
                else if (player2canPlay == true && player2 == false){
                    player2canPlay = false
                    player1canPlay = true
                    robot1()
                   // next()
                 }
                 //player1canPlay = ture && player1 = false
                else if (player1canPlay == true && player1 == false){
                    player1canPlay = false
                    canPlay = true
                   // next()
                 }
                //my vision
                else if player3 && canPlay{
                    player3canPlay = true
                    robot3()
                    canPlay = false
                }//x
                //canPlay = true
                else if player2 && canPlay{
                    player2canPlay = true
                    robot2()
                    canPlay = false
                }//x
                else if player1 && canPlay{
                    player1canPlay = true
                    robot1()
                    canPlay = false
                }//x
                //player3's vision
                else if player2 && player3canPlay{
                    player2canPlay = true
                    robot2()
                    player3canPlay = false
                }//step 1
                else if player1 && player3canPlay{
                    player1canPlay = true
                    robot1()
                    player3canPlay = false
                }
                else if started && player3canPlay{
                    //canPlay = true
                    player3canPlay = false
                }
               
                else if player1canPlay && !player1{
                    player1canPlay = false
                    canPlay = true
                    next()
                }
                
                //player2's vision
                
                else if player1 && player2canPlay{
                    player1canPlay = true
                    robot1()
                    player2canPlay = false
                }
                //
                else if !canPlay && player2canPlay{
                    
                    
                    
                    canPlay = true
                    player2canPlay = false
                }
                //
                else if player1canPlay && !canPlay{
                    canPlay = true
                    player1canPlay = false
                }
            }
     }

    var body: some View {
        ZStack{
            Color("Color-7").edgesIgnoringSafeArea(.all)
            VStack{
                
                if(player == 1){
                    Image("room")//1
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100 , height: 100)
                        .offset(x: 150, y: 30)
                }
               
                model(screen_number: $screen_number)
                    .offset(x: 150, y: 30)
                model(screen_number: $screen_number)
                    .offset(x: 150, y: -40)
                model(screen_number: $screen_number)
                    .offset(x: 150, y: -110)
                model(screen_number: $screen_number)
                    .offset(x: 150, y: -180)

                model(screen_number: $screen_number)
                    .offset(x: 150, y: -250)

                
              
            }
            poker_card(card: now_card)
                .offset(x: 0, y: -160)
            
            
            HStack{
                if(player == 2){
                    Image("room")//2
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100 , height: 100)
                        .offset(x: 80, y: -350)
                }
              
                    model(screen_number: $screen_number)
                        .offset(x: 80, y: -340)
                    model(screen_number: $screen_number)
                        .offset(x: 40, y: -340)
                    model(screen_number: $screen_number)
                        .offset(x: 0, y: -340)
                    model(screen_number: $screen_number)
                        .offset(x: -40, y: -340)
                    model(screen_number: $screen_number)
                        .offset(x: -80, y: -340)
                
             
                
            }
            VStack{
                if(player == 3){
                    Image("room")//3
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100 , height: 100)
                        .offset(x: -150, y: 30)
                }
           
                model(screen_number: $screen_number)
                    .offset(x: -150, y: 30)
                model(screen_number: $screen_number)
                    .offset(x: -150, y: -40)
                model(screen_number: $screen_number)
                    .offset(x: -150, y: -110)
                model(screen_number: $screen_number)
                    .offset(x: -150, y: -180)

                model(screen_number: $screen_number)
                    .offset(x: -150, y: -250)

                
              
            }
         
                
            HStack{
               
                Button(action: {
                    //player == 0 代表犉到玩家執行 can play
                    if(canPlay == true){//等等改成可以行動的話
                        started = true
                        played(rank: card0.rank, suit: card0.suit)
                        now_card = card0
                        card0 = cards.randomElement()!
                    //    player += 1
                        if(stop_bot == true && alert == false ){
                            card = card0
                            cards.shuffle()
                            card0 = cards.randomElement()!
                            //                                        canPlay = false
                            next()
                        }
                       
                    }
               
                    
                }, label: {
                  
                        poker_card(card: card0)
                        
                }).alert(isPresented: $restart)
                { () -> Alert in
                    Alert(title: Text("你已經輸掉了本次遊戲"), message: Text("你還有"+"\(money)"+"個籌碼"), dismissButton: .default(Text("再來一把"), action: {
                        
                    }))
                }
                .onAppear(perform: {
                  
            }).sheet(isPresented: $showGameOverView, content: {
                gameover(showSecondPage:$showGameOverView)
                        })

                
       //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                
                
                
                
                Button(action: {
                    if(canPlay == true){
                        started = true
                        now_card = card1
                    played(rank: card1.rank, suit: card1.suit)
                    card1 = cards.randomElement()!
                        if(stop_bot == true && alert == false ){
                            card = card0
                            cards.shuffle()
                            card0 = cards.randomElement()!
                            
                            next()
                            
                        }
                      
            }
                   
                }, label: {
                  
                        poker_card(card: card1)
                        
                })  .alert(isPresented: $SorA10)
                { () -> Alert in
                    Alert(title: Text("選擇您所要執行的動作"), message: Text("Choose !!"), primaryButton: .default(Text("加 10"), action: {
                        stop_bot = true
                        texting += 10
                        next()
                        
                    }), secondaryButton: .default(Text("減 10"), action: {
                        stop_bot = true
                        texting -= 10
                        next()
                        
                    }))
                }
                .onAppear(perform: {
                    
            }).sheet(isPresented: $showGameOverView, content: {
                gameover(showSecondPage:$showGameOverView)
                        })
                //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                
                Button(action: {
                    if(canPlay == true){
                        started = true
                        now_card = card2
                    played(rank: card2.rank, suit: card2.suit)
                    card2 = cards.randomElement()!
                        if(stop_bot == true && alert == false ){
                            card = card0
                            cards.shuffle()
                            card0 = cards.randomElement()!
                        
                            next()
                        }
                     
                        

                    }
                    
                }, label: {
                  
                        poker_card(card: card2)
                        
                })
                .alert(isPresented: $restart)
                { () -> Alert in
                    Alert(title: Text("你已經贏得本場遊戲"), message: Text("請選擇您的決定"), primaryButton: .default(Text("再來一場"), action: {
                        
                    }), secondaryButton: .default(Text("離開遊戲"), action: {
                        
                        
                    }))
                }
                .onAppear(perform: {
                 
            }).sheet(isPresented: $showGameOverView, content: {
                gameover(showSecondPage:$showGameOverView)
                        })

                //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                Button(action: {
                    if(canPlay == true){
                        started = true
                        now_card = card3
                    played(rank: card3.rank, suit: card3.suit)
                    card3 = cards.randomElement()!
                        if(stop_bot == true && alert == false ){
                            card = card0
                            cards.shuffle()
                            card0 = cards.randomElement()!
                            
                            next()
                        }
                     

            }
                    
                }, label: {
                  
                        poker_card(card: card3)
                        
                }) .onAppear(perform: {
                   
            }).sheet(isPresented: $showGameOverView, content: {
                gameover(showSecondPage:$showGameOverView)
                        })
                //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                Button(action: {
                    if(canPlay == true){
                        started = true
                        now_card = card4
                    played(rank: card4.rank, suit: card4.suit)
                    card4 = cards.randomElement()!
                        if(stop_bot == true && alert == false ){
                            card = card0
                            cards.shuffle()
                            card0 = cards.randomElement()!
                            //                                        canPlay = false
                            next()
                        }

                    
                }
                    
                   
                }, label: {
                  
                        poker_card(card: card4)
                        
                }) .onAppear(perform: {
                  
            }).sheet(isPresented: $showGameOverView, content: {
                gameover(showSecondPage:$showGameOverView)
                        })
                //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            
            }.padding(.top,553)
            
            
            

            VStack{
        ZStack{
            
            Rectangle()
             .fill(Color("Color-5"))
             .frame(width: 100, height: 100)
             .cornerRadius(10)
            .overlay( Text(String(texting))
                        .fontWeight(.bold)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding(10)
                                    
                        )
            .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 5)
                         )
           
            if(canPlay){
                Image("king")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80 , height: 80)
                    .offset(x: -147, y:175)
            }
            else if player1canPlay {
                
                Image("king")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80 , height: 80)
                    .offset(x: 150, y:-260)
            }
            else if player2canPlay {
                Image("king")
                    .resizable()
                    .frame(width: 80 , height: 80)
                    .scaledToFit()
                  .offset(x: -137, y:-375)
            }
            else if player3canPlay {
                Image("king")
                    .resizable()
                    .frame(width: 80 , height: 80)
                    .scaledToFit()
                    .offset(x: -150, y:-260)
            }
            Text("您所剩餘的籌碼："+String(money))
                .fontWeight(.bold)
                .font(.headline)
                .foregroundColor(.white)
                .offset(x: 0, y: 200)
            if(!player1){
                Image("sticker-1")
                    .resizable()
                    .frame(width: 120 , height: 120)
                    .scaledToFit()
                    .offset(x: 150, y:-260)
                
            }
            if(!player2){
                Image("sticker-1")
                    .resizable()
                    .frame(width: 120 , height: 120)
                    .offset(x: -137, y:-375)
            }
            if(!player3){
                Image("sticker-1")
                    .resizable()
                    .frame(width: 120 , height: 120)
                    .offset(x: -150, y:-260)
            }
            if countershow{
            VStack{
            if(clockwise){
                Image("arrow2")
                    .resizable()
                    .frame(width: 100 , height: 100)
                    .scaledToFit()
                    .offset(x: 127, y:175)
                    .transition(
                    .scale(scale: 3)
                    .combined(with: .opacity))
                
            }
            else if(!clockwise ){
                Image("arrow2")
                    .resizable()
                    .frame(width: 100 , height: 100)
                    .scaledToFit()
                    .rotationEffect(.degrees(Double(rotat)))
                    .offset(x: 127, y:175)
                    .transition(
                    .scale(scale: 3)
                    .combined(with: .opacity))
                
            }
        }
        .animation(.easeInOut(duration: 0.1))
        }
           
            
           
   
                VStack {
                    
                    
                if PassAlert {
                Image("pass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250 , height: 250)
                    .offset(x: 0, y:-180)
                .transition(
                .scale(scale: 3)
                .combined(with: .opacity))
            

                    
                    }
                    
                
                }
                .animation(.easeInOut(duration: 0.1))
           
            
            if(pointer == true){
                HStack{
                    Button(action: {
                        pointer = false
                        stop_bot = true
                        if clockwise{
                            canPlay = false
                            player2canPlay = true
                            next()
                        }
                        else{
                            canPlay = false
                            player3canPlay = true
                            next()
                        }
                    }, label: {
                        Color("Color-1")
                            .frame(width: 64, height:44)
                            .cornerRadius(10)
                           // .scaledToFit()
                            .frame(width: 64, height:44)
                            .overlay(
                                Text("player1")
                            )
                            .overlay(RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.black, lineWidth: 3)
                                         )
                            
                        
                            
                    })
                    
                    .onAppear(perform: {
                    
                })
                    Button(action: {
                        pointer = false
                        stop_bot = true
                        if clockwise{
                            canPlay = false
                            player3canPlay = true
                            next()
                        }
                        else{
                            canPlay = false
                            player1canPlay = true
                            next()
                        }
                    }, label: {
                        Color("Color-1")
                            .frame(width: 64, height:44)
                            .cornerRadius(10)
                           // .scaledToFit()
                            .frame(width: 64, height:44)
                            .overlay(
                                Text("player2")
                            )
                            .overlay(RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.black, lineWidth: 3)
                                         )
                            
                    })
                    
                    .onAppear(perform: {
                    
                })
                    Button(action: {
                        pointer = false
                        stop_bot = true
                        if clockwise{
                            canPlay = false
                            player1canPlay = true
                            next()
                        }
                        else{
                            canPlay = false
                            player2canPlay = true
                            next()
                        }
                    }, label: {
                        Color("Color-1")
                            .frame(width: 64, height:44)
                            .cornerRadius(10)
                           // .scaledToFit()
                            .frame(width: 64, height:44)
                            .overlay(
                                Text("player3")
                            )
                            .overlay(RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.black, lineWidth: 3)
                                         )
                            
                    })
                    
                    .onAppear(perform: {
                    
                })
                }.offset(x:0, y:100)
            }
         

          
                Button(action: {
                    cards.shuffle()
                    card0 = cards[0]
                    card1 = cards[1]
                    card2 = cards[2]
                    card3 = cards[3]
                    card4 = cards[4]
                   // started = true
                }, label: {
                    Text(" ")
                })
                .offset(x:-145, y: 350)
                .onAppear(perform: {
                    //canPlay = true
            })
          
            
                }
                
            }
            
           
           
                

        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView(money: .constant(0), screen_number: .constant(0))
    }
}
