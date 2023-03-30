//
//  SwiftUIView.swift
//  
//
//  Created by A_Mcflurry on 2023/03/29.
//

import SwiftUI

struct Ep1Frame5: View {
    @State var subtitle = "CBL을 쌓아가던 중 '리(이)오' 등장"
    @State var tag:Int? = nil
    var body: some View {
        
        ZStack {
            Image("1-5")
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
                                    destination: Ep1Frame6(), tag : 1, selection: self.$tag){}
                                
                                
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

struct Ep1Frame5_Previews: PreviewProvider {
    static var previews: some View {
        Ep1Frame5()
    }
}
