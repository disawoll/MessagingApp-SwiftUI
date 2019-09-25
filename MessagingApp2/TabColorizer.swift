//
//  TabColorizer.swift
//  MessagingApp2
//
//  Created by Doğan Mert Güven on 24.09.2019.
//  Copyright © 2019 Doğan Mert Güven. All rights reserved.
//

import Foundation

func tabImage(tag: Int, selection: Int) -> String {
    if tag == 0 && selection == 0 {
        return "bubble.left.and.bubble.right.fill"
    } else if tag == 0 && selection != 0 {
        return "bubble.left.and.bubble.right"
    } else if tag == 1 && selection == 1 {
        return "dial.fill"
    } else if tag == 1 && selection != 1 {
        return "dial"
    } else {
        // error
        return "exclamationmark.triangle.fill"
    }
}
