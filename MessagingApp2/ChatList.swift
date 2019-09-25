//
//  FirstTab.swift
//  MessagingApp2
//
//  Created by Doğan Mert Güven on 24.09.2019.
//  Copyright © 2019 Doğan Mert Güven. All rights reserved.
//

import SwiftUI

struct ChatList: View {
    var selection: Int
    
    var body: some View {
        NavigationView {
            List(1 ..< 6) { item in
                HStack {
                    NavigationLink(destination: ChatView()) {
                        HStack {
                            ZStack {
                                Circle()
                                    .fill(
                                        LinearGradient(
                                            gradient: Gradient(colors: [.pink, .blue]),
                                            startPoint: .leading,
                                            endPoint: .trailing
                                        )
                                    )
                                    .scaledToFit()
                                    .frame(width: 50)
                                
                                Image(systemName: "hare.fill")
                                    .font(.title)
                                    .foregroundColor(Color.white)
                            }
                            
                            VStack(alignment: .leading, spacing: 5) {
                                HStack {
                                    Text("Chat")
                                        .bold()
                                    Text("\(item)")
                                        .bold()
                                        .foregroundColor(Color.green)
                                    Spacer()
                                    Text("24.09.2019")
                                        .font(.footnote)
                                        .foregroundColor(Color.gray)
                                }
                                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus, urna in ornare rutrum, sapien neque venenatis sem, quis fermentum elit enim nec diam. Etiam mattis sem sed sollicitudin sollicitudin. Phasellus hendrerit urna nec neque rhoncus, in gravida nulla pellentesque.")
                                    .font(.footnote)
                                    .foregroundColor(Color.gray)
                                    .lineLimit(2)
                                    .lineSpacing(3)
                            }
                            .padding(.horizontal, 7)
                        }
                        .padding(.vertical, 2)
                    }
                }
            }
            .navigationBarTitle(Text("Chats"))
        }
        .tabItem {
            Image(systemName: tabImage(tag: 0, selection: selection))
                .font(
                    .system(size: 25))
            Text("Chats")
        }
        .tag(0)
    }
}

struct ChatList_Previews: PreviewProvider {
    static var previews: some View {
        ChatList(selection: 0)
    }
}
