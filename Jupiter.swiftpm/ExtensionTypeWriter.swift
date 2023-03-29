//
//  ExtensionTypeWriter.swift
//  Jupiter
//
//  Created by user on 2023/03/29.
//

import Foundation
import SwiftUI

// typeWriter 효과를 주고싶으면 코지의 Rectangle... 부분에서 textField 를 typeWriterField 로 바꾸기만 하면 됩니다 :)
extension Rectangle {
    func typeWriterField(_ text: String) -> some View {
        self
            .foregroundColor(.white)
            .frame(height: 300)
            .padding(.all, 20)
            .overlay(alignment: .center) {
                Rectangle()
                    .border(.black)
                    .padding(.all, 30)
                    .foregroundColor(.white)
                    .overlay(alignment: .center) {
                        TyperWriterView(finalText: text)
                            .font(.system(size: 40))
                            .lineLimit(nil)
                            .padding(.all, 40)
            }
        }
    }
}
