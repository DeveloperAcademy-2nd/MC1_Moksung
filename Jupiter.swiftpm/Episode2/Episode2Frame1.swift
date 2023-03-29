//
//  Episode2Frame1.swift
//  Jupiter
//
//  Created by user on 2023/03/29.
//

import SwiftUI

struct Episode2Frame1: View {
    @State private var nxtSwitch = false
    
    let images = ["2_1_1", "2_1_2"]
    @State private var index = 0
    
    var body: some View {
        ZStack {
            Image(index<=0 ? images[0] : images[index-1])
            Image("\(images[index])")
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
                    .textField("시작은 아직 이안이 쌩쌩했던 23시,\n목성 최균함의 비상대책회의가 열린다.")
                    .overlay {
                        VStack {
                            Spacer()
                            HStack {
                                Spacer()
                                // button 클릭될 경우 text 변하도록 설정
                                Button {
                                    nxtSwitch = true
                                    print("tapped")
                                } label: {
                                    Label("NEXT", systemImage: "arrow")
                                }
                                .frame(width: 50, height: 30)
                                .padding(.bottom, 100)
                                .padding(.trailing, 35)
                                .disabled(index<images.count-1)
                                
                            }
                        }
                    }
            }
        }
        .background(Color.backgroundColor)
        .ignoresSafeArea(.all)
    }
}

struct Episode2Frame1_Previews: PreviewProvider {
    static var previews: some View {
        Episode2Frame1()
    }
}
