//
//  ExtensionTypeWriter.swift
//  Jupiter
//
//  Created by user on 2023/03/29.
//

import Foundation
import SwiftUI


extension Rectangle {
    func typeWriteField(_ text: String) -> some View {
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
