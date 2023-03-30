//
//  SwiftUIView.swift
//  
//
//  Created by user on 2023/03/29.
//

import SwiftUI

struct Episode2Frame6: View {
    let images = ["2_6_1", "2_6_2"]
    @State private var index = 0
    
    var body: some View {
        ZStack {
            Image(index<=0 ? images[0] : images[index-1])
            Image(images[index])
                .resizable()
                .scaledToFit()
                .onTapGesture {
                    if index<images.count-1 {
                        index += 1
                    }
                }
                .animation(.easeIn, value: index)
            
            VStack {
                Spacer()
                Rectangle()
                    .textField("성공적인 게릴라 인터뷰를 통해, 우리는 시간과 공간의 블랙보드에서 빠져나오게 됨.")
                    .overlay {
                        VStack {
                            HStack {
                                Spacer()
                                // button 클릭될 경우 text 변하도록 설정
                                if index < images.count-1 {
                                    Button {
                                        withAnimation {
                                            index += 1
                                        }
                                    } label: {
                                        Text("장면 \(index+1)/\(images.count)")
                                    }
                                    .padding(.top, 60)
                                    .padding(.trailing,50)
                                } else {
                                    NavigationLink {
                                        Ep2Frame7()
                                    } label: {
                                        HStack {
                                            Text("다음")
                                            Image(systemName: "arrow.right")
                                        }
                                    }
                                    .padding(.top, 60)
                                    .padding(.trailing,50)
                                }
                                                                
                            }
                        }
                    }
            }
        }
        .background(Color.backgroundColor)
        .ignoresSafeArea(.all)
    }
}

struct Episode2Frame6_Previews: PreviewProvider {
    static var previews: some View {
        Episode2Frame6()
    }
}
