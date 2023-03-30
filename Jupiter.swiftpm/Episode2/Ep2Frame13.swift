//
//  SwiftUIView.swift
//  
//
//  Created by semini on 2023/03/30.
//

import SwiftUI

struct Ep2Frame13: View {
    @State var subtitle = "발표가 마무리 되고, 우리는 비로소 팀이 되었다!"
    @State var tag:Int? = nil
    
    var body: some View {
        ZStack {
            Image("image_EP2_13")
            VStack {
                Spacer()
                Rectangle()
                    .textField(subtitle)
                    .multilineTextAlignment(.center)

            }       // vstack
            
        }           // zstack
        .ignoresSafeArea(.all)
        .background(Color.backgroundColor)
    }
}

struct Ep2Frame13_Previews: PreviewProvider {
    static var previews: some View {
        Ep2Frame13()
    }
}
