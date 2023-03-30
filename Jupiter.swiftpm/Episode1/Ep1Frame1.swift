//  솔직히,, 아무튼 돌아가는 스파게티 코드가 된거 같아서 마음 같아선 다 갈아버리고 싶읍니다...
// 뭐랄까,, 어디선가 가져와서 붙여넣고 다시 맞게 최적화를 시켜야 하는데 처음이기도 해서 잘 모르고 무지성으로 붙이다 보니 제가 읽어봐도 짜임새 없는 조잡한 코드가 되었네요.
// 시간이 널널 했으면 아마 다시 시작 했을거 같기도 하고,,


import SwiftUI

struct Ep1Frame1: View {
    @State var subtitle = "대망의 첫 CBL,\n첫 MC1 시작이다."
    @State var tag:Int? = nil
    @State private var index = 0
    
    let images = ["1-1-1", "1-1-2"]
    
    var body: some View {
        ZStack {
            Image(images[index])
                .animation(.easeIn, value: index)
            
            VStack {
                Spacer()
                Rectangle()
                    .typeWriterField(subtitle)
                    .multilineTextAlignment(.center)
                    .overlay {
                            HStack{
                                Spacer()
                                NavigationLink(
                                    destination: Ep1Frame2(), tag : 1, selection: self.$tag){}
                                
                                
                                Button("다음 \(index+1)/\(images.count)"){
                                    if(index == images.count-1){
                                        self.tag = 1
                                    } else {
                                        index += 1
                                    }
                                }.padding(.top, 60)
                                .padding(.trailing,50)
                            }       // HStack
                }       // overlay
            }       // vstack
        }           // zstack
        .ignoresSafeArea(.all)
        .background(Color.backgroundColor)
        
    }   // body
}   // view


struct Ep1Frame1_Previews: PreviewProvider {
    static var previews: some View {
        Ep1Frame1()
    }
}

