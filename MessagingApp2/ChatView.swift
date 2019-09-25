//
//  ChatView.swift
//  MessagingApp2
//
//  Created by Doğan Mert Güven on 24.09.2019.
//  Copyright © 2019 Doğan Mert Güven. All rights reserved.
//

import SwiftUI

struct ChatView: View {
    var body: some View {
        NavigationView {
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus, urna in ornare rutrum, sapien neque venenatis sem, quis fermentum elit enim nec diam. Etiam mattis sem sed sollicitudin sollicitudin. Phasellus hendrerit urna nec neque rhoncus, in gravida nulla pellentesque.")
                .italic()
                .padding()
        }
        .navigationBarTitle(Text("Chat View"), displayMode: .inline)
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
