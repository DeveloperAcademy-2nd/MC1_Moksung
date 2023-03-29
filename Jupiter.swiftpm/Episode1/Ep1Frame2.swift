//
//  SwiftUIView.swift
//  
//
//  Created by A_Mcflurry on 2023/03/29.
//

import SwiftUI

struct Ep1Frame2: View {
    var body: some View {
        ZStack{
            Image("2")
                .offset(y:-100)
            VStack {
                Spacer()
                ZStack{
                    Rectangle()
                        .textField("대망의 첫 CBL,\n첫 MC1 시작이다.")
                    .multilineTextAlignment(.center)
                    
                    NavigationLink(destination: Ep1Frame3(),
                                   label: {
                        Text("Next")
                    })
                    
                }   //Zstack
            }   // VStack
        }   // Zstack
        .background(Color.backgroundColor)
    }
}

struct Ep1Frame2_Previews: PreviewProvider {
    static var previews: some View {
        Ep1Frame2()
    }
}
