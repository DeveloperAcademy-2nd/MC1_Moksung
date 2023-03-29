//
//  SwiftUIView.swift
//  
//
//  Created by A_Mcflurry on 2023/03/29.
//

import SwiftUI

struct Ep1Frame11: View {
    @State var subtitle = "목성 최균함는(은)눈 앞이 깜깜해졌다..."
    @State var tag:Int? = nil
    var body: some View {
        
        ZStack {
            Image("1-11")
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
                                    destination: Ep1Frame12(), tag : 1, selection: self.$tag){}
                                
                                
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

struct Ep1Frame11_Previews: PreviewProvider {
    static var previews: some View {
        Ep1Frame11()
    }
}
