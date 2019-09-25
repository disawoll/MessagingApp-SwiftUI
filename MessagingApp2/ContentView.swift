//
//  ContentView.swift
//  MessagingApp2
//
//  Created by Doğan Mert Güven on 24.09.2019.
//  Copyright © 2019 Doğan Mert Güven. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection){
            ChatList(selection: selection)
            Settings(selection: selection)
        }
        .accentColor(Color.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
