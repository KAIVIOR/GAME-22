//
//  testview.swift
//  GAME-22
//
//  Created by 吳庭愷 on 2021/4/30.
//

import SwiftUI

struct testview: View {
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
            Button(action: {}
                   , label: {
                Text("Button")
            })
        }
        
    }
}

struct testview_Previews: PreviewProvider {
    static var previews: some View {
        testview()
    }
}
