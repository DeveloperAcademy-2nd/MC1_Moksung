//
//  Extension.swift
//  Jupiter
//
//  Created by 한지석 on 2023/03/28.
//

import SwiftUI

extension Rectangle {
    func textField(_ text: String) -> some View {
        self
            .foregroundColor(.gray)
            .frame(height: 300)
            .padding(.all, 20)
            .overlay(alignment: .center) {
                Rectangle()
                    .border(.black)
                    .padding(.all, 30)
                    .foregroundColor(.white)
                    .overlay(alignment: .center) {
                        Text(text)
                            .font(.system(size: 40))
                            .lineLimit(nil)
                            .padding(.all, 40)
                    }   
            }
    }
}
