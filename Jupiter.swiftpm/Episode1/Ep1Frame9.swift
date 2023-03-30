//
//  SwiftUIView.swift
//  
//
//  Created by A_Mcflurry on 2023/03/29.
//

import SwiftUI
import AVKit

struct Ep1Frame9: View {
    @State var subtitle = "야생의 링고-사야(이)가 피드백을 걸어왔다!"
    @State var tag:Int? = nil
    
    
    var body: some View {
        
        ZStack {
            Image("1-9")
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
                                    destination: Ep1Frame10(), tag : 1, selection: self.$tag){}
                                
                                
                                Button("다음"){
                                    self.tag = 1
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

struct Ep1Frame9_Previews: PreviewProvider {
    static var previews: some View {
        Ep1Frame9()
    }
}
