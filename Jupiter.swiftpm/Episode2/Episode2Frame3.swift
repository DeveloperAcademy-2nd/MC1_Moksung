//
//  SwiftUIView.swift
//  
//
//  Created by user on 2023/03/29.
//

import SwiftUI

struct Episode2Frame3: View {
    let images = ["2_3_1", "2_3_2", "2_3_3", "2_3_4", "2_3_5"]
    @State private var index = 0
    
    var body: some View {
        ZStack {
            Image(index<=0 ? images[0] : images[index-1])
                Image(images[index])
                .resizable()
                .scaledToFit()
                .onTapGesture {
                    if index < images.count-1 {
                        index += 1
                    }
                }
                .animation(.easeIn, value: index)
            VStack {
                Spacer()
                Rectangle()
                    .textField("솔루션 도출에 해결되지 않는 문제가 있었다.\n우리의 백분 토론을 다른 팀도 구경하기 시작했다.")
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
                                .disabled(index<images.count-1 )
                            }
                        }
                    }
            }
        }
        .background(Color.backgroundColor)
        .ignoresSafeArea(.all)
    }
}

struct Episode2Frame3_Previews: PreviewProvider {
    static var previews: some View {
        Episode2Frame3()
    }
}
