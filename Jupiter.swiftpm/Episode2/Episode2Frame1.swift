//
//  Episode2Frame1.swift
//  Jupiter
//
//  Created by user on 2023/03/29.
//

import SwiftUI

struct Episode2Frame1: View {
    @State private var subtitle = "레츠는 눈 앞이 깜깜해졌다"
    
    var body: some View {
        VStack {
            Image("EP2Frame1")
            Image(systemName: "person")
            Spacer()
            Rectangle()
                .typeWriterField(subtitle)
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

struct Episode2Frame1_Previews: PreviewProvider {
    static var previews: some View {
        Episode2Frame1()
    }
}
