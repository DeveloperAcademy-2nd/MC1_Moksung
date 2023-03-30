//
//  SwiftUIView.swift
//  
//
//  Created by A_Mcflurry on 2023/03/29.
//

import SwiftUI
import AVKit

struct Ep1Frame8: View {
    @State var subtitle = "뚝딱뚝딱 다시 CBL 탑 쌓는 중"
    @State var tag:Int? = nil
    let audioUrl = Bundle.main.url(forResource: "BattleSound", withExtension: "mp3")
    
    var body: some View {
        
        ZStack {
            Image("1-8")
            VStack {
                Spacer()
                Rectangle()
                    .typeWriterField(subtitle)
                    .multilineTextAlignment(.center)
                    .overlay {
                        VStack {
                            HStack{
                                Spacer()
                                NavigationLink(
                                    destination: Ep1Frame9(), tag : 1, selection: self.$tag){}
                                
                                
                                Button(action: {
                                                if let url = audioUrl {
                                                    // AVPlayer를 초기화하고 mp3 파일을 로드하여 재생합니다.
                                                    let player = AVPlayer(url: url)
                                                    player.play()
                                                } else {
                                                    print("Failed to load audio file.")
                                                }
                                                self.tag = 1
                                            }) {
                                                Text("다음")
                                            }.padding(.top, 60)
                                .padding(.trailing,50)
                                
                                
                            }       // HStack
                            
                        }   //vstack
                }       // overlay

                
            }       // vstack
            
        }           // zstack
        .ignoresSafeArea(.all)
        .background(Color.backgroundColor)
        
    }   // body
}

struct Ep1Frame8_Previews: PreviewProvider {
    static var previews: some View {
        Ep1Frame8()
    }
}
