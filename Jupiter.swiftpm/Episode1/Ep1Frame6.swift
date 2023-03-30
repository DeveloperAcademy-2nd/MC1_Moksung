//
//  SwiftUIView.swift
//  
//
//  Created by A_Mcflurry on 2023/03/29.
//

import SwiftUI

struct Ep1Frame6: View {
    @State var subtitle = "리이오(도미노 장인) “잘하고 있네?ㅎ 무너트려볼까?ㅎ”"
    @State var tag:Int? = nil
    var body: some View {
        
        ZStack {
            Image("1-6")
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
                                    destination: Ep1Frame7(), tag : 1, selection: self.$tag){}
                                
                                
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

struct Ep1Frame6_Previews: PreviewProvider {
    static var previews: some View {
        Ep1Frame6()
    }
}
