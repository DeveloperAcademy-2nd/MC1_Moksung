//
//  SwiftUIView.swift
//  
//
//  Created by 한지석 on 2023/03/29.
//

import SwiftUI

struct Ep3Frame2: View {
    
    @State var conversationDesign: [ConversationDesign] = [
        ConversationDesign(image: "unknownLeft",
                           nickname: "익명의 A씨",
                           conversation: "\"B는 아버지가 잘생기셨나봐요?\""),
        ConversationDesign(image: "unknownRight",
                           nickname: "익명의 B씨",
                           conversation: "\"어, 왜요?\""),
        ConversationDesign(image: "unknownLeft",
                           nickname: "익명의 A씨",
                           conversation: "\"딸은, 아버지를,\n닮으니까.\"")
    ]
    
    @State var index = 0

    var body: some View {
        ZStack {
            Button {
                if index != 0 {
                    withAnimation(.easeOut) {
                        index -= 1
                    }
                }
            } label: {
                Image("Frame1")
            }
            
            VStack {
                Spacer()
                Rectangle()
                    .subtitleRectangle()
                    .overlay {
                        VStack(spacing: 0) {

                            if index % 2 == 0 {
                                LeftSubtitleTop(conversationDesign: $conversationDesign[index])
                                LeftSubtitleMiddle(conversationDesign: $conversationDesign[index])
                            } else {
                                RightSubtitleTop(conversationDesign: $conversationDesign[index])
                                RightSubtitleMiddle(conversationDesign: $conversationDesign[index])
                            }
                            
                            Spacer()
                            HStack {
                                Spacer()

                                Button(action: {
                                    withAnimation(.easeIn) {
                                        if index < conversationDesign.count - 1 {
                                            index += 1
                                        }
                                    }
                                }, label: {
                                    Text("NEXT")
                                })
                                .frame(width: 50, height: 35)
                                .padding(.bottom, 105)
                                .padding(.trailing, 40)
                        }
                    }
                }
            }
        }
        .background(Color.backgroundColor)
        .ignoresSafeArea(.all)

    }
}

struct Ep3Frame2_Previews: PreviewProvider {
    static var previews: some View {
        Ep3Frame2()
    }
}

//MARK: 등장인물 기준 왼 / 오른 구분

struct LeftSubtitleTop: View {
    
    @Binding var conversationDesign: ConversationDesign
    
    var body: some View {
        HStack(alignment: .top) {
            
            Image(conversationDesign.image)
                .resizable()
                .padding(.leading, 20)
                .frame(width: 130, height: 150)
            Text(conversationDesign.nickname)
                .font(.system(size: 40))
//                .multilineTextAlignment(.leading)
                .lineLimit(1)
                .padding(.top, 40)
            // 가로 Spacer()
            Spacer()
            NavigationLink {
                Ep3Frame3()
            } label: {
                Text("   ")
                    .background(.black)
                    .opacity(0)
            }
            .frame(width: 65, height: 50)
            
        }
    }
}

struct LeftSubtitleMiddle: View {
    
    @Binding var conversationDesign: ConversationDesign
    
    var body: some View {
        HStack(alignment: .top) {
            Spacer()
            Text(conversationDesign.conversation)
                .font(.system(size: 36))
                .lineLimit(nil)
                .multilineTextAlignment(.center)
                .padding(.leading, 40)
                .padding(.trailing, 40)
            Spacer()
        }
    }
}

struct RightSubtitleTop: View {
    
    @Binding var conversationDesign: ConversationDesign
    
    var body: some View {
        HStack(alignment: .top) {
            Spacer()
            Text(conversationDesign.nickname)
                .font(.system(size: 40))
                .multilineTextAlignment(.leading)
                .padding(.top, 40)
            Image(conversationDesign.image)
                .resizable()
                .padding(.trailing, 20)
                .frame(width: 130, height: 150)
            // 가로 Spacer()
            
        }
    }
}

struct RightSubtitleMiddle: View {
    
    @Binding var conversationDesign: ConversationDesign
    
    var body: some View {
        HStack(alignment: .top) {
            Spacer()
            Text(conversationDesign.conversation)
                .font(.system(size: 36))
                .lineLimit(nil)
                .padding(.leading, 40)
                .padding(.trailing, 40)
            Spacer()
        }
    }
}

struct ConversationDesign: Identifiable {
    let id = UUID().uuidString
    let image: String
    let nickname: String
    let conversation: String
}
