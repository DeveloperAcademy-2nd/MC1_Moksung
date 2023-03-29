//
//  SwiftUIView.swift
//  
//
//  Created by user on 2023/03/29.
//

import SwiftUI

struct Episode2Frame4: View {
    var body: some View {
        ZStack {
                Image("2_4")
                .resizable()
                .scaledToFit()
                
            VStack {
                Spacer()
                Rectangle()
                    .textField("코지는 참지못하고, 해결책을 찾기 위해 게릴라 인터뷰를 진행한다.")
                    .overlay {
                        VStack {
                            Spacer()
                            HStack {
                                Spacer()
                                // button 클릭될 경우 text 변하도록 설정
                                Button {
                                    print("tapped")
                                } label: {
                                    Label("NEXT", systemImage: "arrow")
                                }
                                .frame(width: 50, height: 30)
                                .padding(.bottom, 100)
                                .padding(.trailing, 35)
                                
                            }
                        }
                    }
            }
        }
        .background(Color.backgroundColor)
        .ignoresSafeArea(.all)
    }
}

struct Episode2Frame4_Previews: PreviewProvider {
    static var previews: some View {
        Episode2Frame4()
    }
}
