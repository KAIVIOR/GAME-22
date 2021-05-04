//
//  Card.swift
//  00781045_game2
//
//  Created by User02 on 2021/3/21.
//

import Foundation
struct Card1
{
    var suit: String
    var rank: String
}
struct Word
{
    var word : String
    
}
struct Back
{
    var back: String

}
class GameObject: ObservableObject{
   
    //@Published var turn: Int = 0
    
    @Published var gamepage = false
    @Published var choosepage = false
    @Published var cardback = 1

}

var backs = [
Back(back: "screen0"),Back(back: "screen1"),Back(back: "screen2"),Back(back: "screen3"),Back(back: "screen4")
]
let suits = ["spades", "hearts", "diamonds", "clubs"]
let ranks = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
var cards = [
    Card1(suit: "spades", rank: "A"),
    Card1(suit: "spades", rank: "2"),
    Card1(suit: "spades", rank: "3"),
    Card1(suit: "spades", rank: "4"),
    Card1(suit: "spades", rank: "5"),
    Card1(suit: "spades", rank: "6"),
    Card1(suit: "spades", rank: "7"),
    Card1(suit: "spades", rank: "8"),
    Card1(suit: "spades", rank: "9"),
    Card1(suit: "spades", rank: "10"),
    Card1(suit: "spades", rank: "J"),
    Card1(suit: "spades", rank: "Q"),
    Card1(suit: "spades", rank: "K"),

    Card1(suit: "hearts", rank: "A"),
    Card1(suit: "hearts", rank: "2"),
    Card1(suit: "hearts", rank: "3"),
    Card1(suit: "hearts", rank: "4"),
    Card1(suit: "hearts", rank: "5"),
    Card1(suit: "hearts", rank: "6"),
    Card1(suit: "hearts", rank: "7"),
    Card1(suit: "hearts", rank: "8"),
    Card1(suit: "hearts", rank: "9"),
    Card1(suit: "hearts", rank: "10"),
    Card1(suit: "hearts", rank: "J"),
    Card1(suit: "hearts", rank: "Q"),
    Card1(suit: "hearts", rank: "K"),

    
    Card1(suit: "clubs", rank: "A"),
    Card1(suit: "clubs", rank: "2"),
    Card1(suit: "clubs", rank: "3"),
    Card1(suit: "clubs", rank: "4"),
    Card1(suit: "clubs", rank: "5"),
    Card1(suit: "clubs", rank: "6"),
    Card1(suit: "clubs", rank: "7"),
    Card1(suit: "clubs", rank: "8"),
    Card1(suit: "clubs", rank: "9"),
    Card1(suit: "clubs", rank: "10"),
    Card1(suit: "clubs", rank: "J"),
    Card1(suit: "clubs", rank: "Q"),
    Card1(suit: "clubs", rank: "K"),
    
    Card1(suit: "diamonds", rank: "A"),
    Card1(suit: "diamonds", rank: "2"),
    Card1(suit: "diamonds", rank: "3"),
    Card1(suit: "diamonds", rank: "4"),
    Card1(suit: "diamonds", rank: "5"),
    Card1(suit: "diamonds", rank: "6"),
    Card1(suit: "diamonds", rank: "7"),
    Card1(suit: "diamonds", rank: "8"),
    Card1(suit: "diamonds", rank: "9"),
    Card1(suit: "diamonds", rank: "10"),
    Card1(suit: "diamonds", rank: "J"),
    Card1(suit: "diamonds", rank: "Q"),
    Card1(suit: "diamonds", rank: "K"),

]
