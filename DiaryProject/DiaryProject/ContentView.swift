//
//  ContentView.swift
//  DiaryProject
//
//  Created by Benchaphon Phukhen on 23/6/2567 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            
            ZStack {
                Color.yellow
                    .opacity(0.1)
                    .ignoresSafeArea()
                VStack{
                    Spacer()
                    Text("👀❔")
                        .font(.system(size: 80))
                    Text("How was your day?")
                        .font(.title)
                        .bold()
                    Spacer()
                    NavigationLink{
                        SecondView()
                    }
                    label : {
                        Text("Next")
                            .font(.title2)
                            .bold()
                    }
                }
                
            }
        }
    }
}
    
        
    


#Preview {
    ContentView()
}
