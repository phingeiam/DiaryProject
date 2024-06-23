//
//  SecondView.swift
//  DiaryProject
//
//  Created by Benchaphon Phukhen on 23/6/2567 BE.
//

import SwiftUI

struct SecondView: View {
    
    var body: some View {
        NavigationStack{
            ZStack {
                Color.yellow
                    .opacity(0.1)
                    .ignoresSafeArea()
                VStack{
                    Text("June")
                        .font(.title)
                        .bold()
                    HStack(alignment: .center){
                        Text("🥰")
                            .font(.system(size: 50))
                    }
                    Spacer()
                    HStack{
                        Spacer()
                        Image("PlusIcon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth : 95)
                    }.padding()
                }
            }
        }
    }
}

#Preview {
    SecondView()
}
