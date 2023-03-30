//
//  SwiftUIView.swift
//  
//
//  Created by A_Mcflurry on 2023/03/29.
//

import SwiftUI

struct Ep1Frame14: View {
    @State var tag:Int? = nil
    var body: some View {
    ZStack {
        Color.backgroundColor.ignoresSafeArea()
        Image("1-14")
        VStack {
            Spacer()
            HStack{
                Spacer()
                NavigationLink(
                    destination: Ep1Frame15(), tag : 1, selection: self.$tag){}
                
                
                Button("다음"){
                    self.tag = 1
                }.padding(.bottom, 70)
                .padding(.trailing,50)
                
                
            }       // HStack
            
        }   //vstack
        
    }           // zstack
    
    
}   // body
}

struct Ep1Frame14_Previews: PreviewProvider {
    static var previews: some View {
        Ep1Frame14()
    }
}
