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
    @State private var index = 0
    
    let images = ["1-6-1", "1-6-2"]
    var body: some View {
        
        ZStack {
            Image(images[index])
                .animation(.easeIn, value: index)
            
            
            VStack {
                Spacer()
                Rectangle()
                    .typeWriterField(subtitle)
                    .multilineTextAlignment(.center)
                    .overlay {
                            HStack{
                                Spacer()
                                NavigationLink(
                                    destination: Ep1Frame7(), tag : 1, selection: self.$tag){}
                                
                                
                                Button("다음\(index+1)/\(images.count)"){
                                    if(index == images.count-1){
                                        self.tag = 1
                                    } else {
                                        index += 1
                                    }
                                }.padding(.top, 60)
                                .padding(.trailing,50)
                                
                                
                            }       // HStack
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
