//
//  GAME_22App.swift
//  GAME-22
//
//  Created by User11 on 2021/3/23.
//

import SwiftUI

@main
struct GAME_22App: App {
     @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            HomePageView()
        }
    }
}
