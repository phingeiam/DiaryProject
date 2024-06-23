//
//  ForthView.swift
//  demoGithubproject
//
//  Created by phing eiam on 23/6/2567 BE.
//

import SwiftUI

struct ForthView: View {
    @State var todayEmotion: Emoji
    @State private var notes = ""
    
    var body: some View {
        ZStack{
            Color.yellow
                .opacity(0.1)
                .ignoresSafeArea()
            VStack{
            
                VStack{
                    Text("\(todayEmotion.emoji)")
                        .font(.system(size: 80))
                    Text("\(todayEmotion.emojiName)")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                }
                
                VStack{
                    VStack (alignment: .leading, spacing: 5) {
                            TextEditor(text: $notes)
                                .submitLabel(.done)
                                .frame(height: 300, alignment: .top)
                                .lineLimit(10)
                                .cornerRadius(10)
                                .multilineTextAlignment(.leading)
                                .colorMultiply(Color("bg_Color"))
                                
                                .foregroundColor(.black)
                               
                                
                        
                            }
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding(.horizontal)
                    }
                } .padding()
                Spacer()
            }
        }
    }


#Preview {
    ForthView(todayEmotion: Emoji(emoji: "🥰", emojiName: "HAPPY"))
}
