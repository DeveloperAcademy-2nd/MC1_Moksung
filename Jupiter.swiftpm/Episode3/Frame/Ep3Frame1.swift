//
//  SwiftUIView.swift
//  
//
//  Created by 한지석 on 2023/03/29.
//

import SwiftUI

struct Ep3Frame1: View {
    
    @State var subtitle = "우리는 전투를 끝내고, 회식을 진행했다. 1차는 맘스터치였다."
    
    var body: some View {
        
        VStack {
            Image("EP3Frame1Background.png")
            Image(systemName: "person")
            Spacer()
            Rectangle()
                .textField(subtitle)
                .overlay {
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            // button 클릭될 경우 text 변하도록 설정
                            Button("TEST") {
                                withAnimation(.easeIn) {
                                    subtitle = "서로 고생했다며 이야기를 이어가는 중에, 우리는 평소처럼 유사과학 이야기를 진행했다."
                                }
                            }
                            .padding(38)
                        }
                    }
                    
                }
        }
        .background(Color.backgroundColor)
    }
}


struct Ep3Frame1_Previews: PreviewProvider {
    static var previews: some View {
        Ep3Frame1()
    }
}
