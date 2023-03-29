//
//  Episode1.swift
//  
//
//  Created by 한지석 on 2023/03/27.
//

import SwiftUI

struct Ep1Frame1: View {
    var body: some View {
        ZStack{
            Image("1")
                .offset(y:-100)
            VStack {
                Spacer()
                ZStack{
                    Rectangle()
                        .textField("대망의 첫 CBL,\n첫 MC1 시작이다.")
                    .multilineTextAlignment(.center)
                    
                    NavigationLink(destination: Ep1Frame2(),
                                   label: {
                        Text("Next")
                    })
                    
                }   //Zstack
            }   // VStack
        }   // Zstack
        .background(Color.backgroundColor)
    }   // body
}   // view
    


struct Ep1Frame1_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Ep1Frame1()
        }
    }
}
