//
//  SecondTab.swift
//  MessagingApp2
//
//  Created by Doğan Mert Güven on 24.09.2019.
//  Copyright © 2019 Doğan Mert Güven. All rights reserved.
//

import SwiftUI

struct ExampleRow: View {
    var body: some View {
        HStack {
            Image(systemName: "tortoise.fill")
                .foregroundColor(Color
                    .init(
                        red: 150 / 255,
                        green: 75 / 255,
                        blue: 75 / 255))
            Text("Example Row")
        }
    }
}

struct Settings: View {
    var selection: Int
    
    var body: some View {
        NavigationView {
            List {
                Section() {
                    ExampleRow()
                    ExampleRow()
                    ExampleRow()
                }
                Section() {
                    ExampleRow()
                    ExampleRow()
                    ExampleRow()
                }
                Section() {
                    ExampleRow()
                    ExampleRow()
                    ExampleRow()
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle(Text("Settings"))
        }
        .tabItem {
            Image(systemName: tabImage(tag: 1, selection: selection))
                .font(
                    .system(size: 25))
            Text("Settings")
        }
        .tag(1)
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings(selection: 0)
    }
}
