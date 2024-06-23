
import SwiftUI

struct ThirdView: View {
    @State var showSheet:Bool = false
    
    let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
        ]
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color.yellow
                    .opacity(0.1)
                    .ignoresSafeArea()
                VStack{
                    Text("How are you feeling today?")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                    LazyVGrid(columns: columns, spacing: 10) {
                                    ForEach(EmojiList) { item in
                                        NavigationLink{
                                            ForthView(todayEmotion: item)
                                        } label: {
                                            VStack{
                                                Text("\(item.emoji)")
                                                    .font(.system(size: 50))
                                                Text("\(item.emojiName)")
                                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                                    .bold()
                                                
                                }
                            }
                        }
                    } .padding(.horizontal)
                }
            }
        }
    }
}


#Preview {
    ThirdView()
}

