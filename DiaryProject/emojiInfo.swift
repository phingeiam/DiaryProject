//
//  emojiInfo.swift
//  demoGithubproject
//
//  Created by phing eiam on 23/6/2567 BE.
//

import Foundation

struct Emoji: Identifiable{
    var id: UUID = UUID()
    var emoji : String
    var emojiName : String
}

let EmojiList : [Emoji] = [
    Emoji(emoji: "🥰", emojiName: "HAPPY"),
    Emoji(emoji: "😐", emojiName: "BORED"),
    Emoji(emoji: "😡", emojiName: "ANGRY"),
    Emoji(emoji: "😭", emojiName: "SAD"),
    Emoji(emoji: "😥", emojiName: "HOPELESS"),
    Emoji(emoji: "😨", emojiName: "WORRIED")
]
