//
//  Episode1.swift
//  
//
//  Created by 한지석 on 2023/03/27.
//

import SwiftUI

struct Ep1Frame1: View {
    @State var subtitle = "대망의 첫 CBL,첫 MC1 시작이다."
    @State var tag:Int? = nil
    var body: some View {
        
        ZStack {
            Image("1-1")
            VStack {
                Spacer()
                Rectangle()
                    .textField(subtitle)
                    .multilineTextAlignment(.center)
                    .overlay {
                        VStack {
                            HStack{
                                Spacer()
                                NavigationLink(
                                    destination: Ep1Frame2(), tag : 1, selection: self.$tag){}
                                
                                
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
}   // view


struct Ep1Frame1_Previews: PreviewProvider {
    static var previews: some View {
        Ep1Frame1()
    }
}

