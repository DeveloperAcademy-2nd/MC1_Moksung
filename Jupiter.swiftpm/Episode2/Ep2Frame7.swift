//
//  SwiftUIView.swift
//  
//
//  Created by semini on 2023/03/29.
//

import SwiftUI

struct Ep2Frame7: View {
    
    @State var design: [Design] = [
        Design(image: "image_EP2_7", subtitle: "발표날 아침, 우리는 어제의 고생 덕분에 자신만만하게 입장했다."),
        Design(image: "image_EP2_8", subtitle: "맨 처음 순서로 발표를 하고 싶었지만, 가장 마지막 순서로 진행하게 되었다..."),
        Design(image: "image_EP2_9", subtitle: "드디어 기다리던 발표 순서가 되었는데, 멘토 군단이 우리팀에 관심을 갖고 집중하기 시작했다."),
        Design(image: "image_EP2_10", subtitle: "역시 멘토의 질문은 날카로웠다. 난이도 높은 질문에 우리는 너덜너덜해졌다."),
        Design(image: "image_EP2_11", subtitle: "하지만 우리는 어제의 비상대책회의를 통한 \'뉴런공유\'가 되어 있었고, "),
        Design(image: "image_EP2_12", subtitle: "멘토의 질문에 모두가 필사의 디펜스를 펼쳤다."),
        Design(image: "image_EP2_13", subtitle: "발표가 마무리 되고, 우리는 비로소 팀이 되었다!")
        
    ]
    
    @State var index = 0
    @State var hideButton = false
    @State var thisEPFinish = false
    

    var body: some View {
        if !thisEPFinish {
            ZStack {
                Button {
                    if index != 0 {
                        withAnimation(.easeOut) {
                            index -= 1
                            hideButton = false
                        }
                    }
                } label: {
                    Image(design[index].image)
                }
                
                    VStack {
                        Spacer()
                        Rectangle()
                            .textField(design[index].subtitle)
                            .overlay {
                                VStack {
                                    Spacer()
                                    HStack {
                                        Spacer()
                                        // button 클릭될 경우 text 변하도록 설정
                                        Button("NEXT") {
                                            withAnimation(.easeIn) {
                                                if index < design.count - 1{
                                                    index += 1
                                                } else {
                                                    thisEPFinish = true
                                                }
                                            }
                                        }
                                        .frame(width: 50, height: 30)
                                        .padding(.bottom, 100)
                                        .padding(.trailing, 35)
                                        .opacity(hideButton ? 0 : 1)

                            }
                        }
                    }
                }
            }
            .background(Color.backgroundColor)
            .ignoresSafeArea(.all)
        }
        else {
            Ep2Frame8()
        }
    }
}

struct Ep2Frame7_Previews: PreviewProvider {
    static var previews: some View {
        Ep2Frame7()
    }
}


