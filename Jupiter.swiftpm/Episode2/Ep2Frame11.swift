//
//  SwiftUIView.swift
//  
//
//  Created by semini on 2023/03/30.
//

import SwiftUI

struct Ep2Frame11: View {
    @State var subtitle = "하지만 우리는 어제의 비상대책회의를 통한 \'뉴런공유\'가 되어 있었고, "
    @State var tag:Int? = nil
    
    var body: some View {
        ZStack {
            Image("image_EP2_11")
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
                                    destination: Ep2Frame12(), tag : 1, selection: self.$tag){}
  
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
    }
}


struct Ep2Frame11_Previews: PreviewProvider {
    static var previews: some View {
        Ep2Frame11()
    }
}
