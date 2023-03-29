//
//  TyperWriterView.swift
//  Jupiter
//
//  Created by user on 2023/03/29.
//

import SwiftUI

struct TyperWriterView: View {
    @State private var text = ""
    let finalText: String
    
    var body: some View {
        Text(text)
            .onAppear(perform: typeWrite)
            .onTapGesture {
                typeWrite()
            }
    }
    
    func typeWrite() {
        text = ""
        finalText.enumerated().forEach { index, charecter in
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1 * Double(index)) {
                text += String(charecter)
            }
            
        }
    }
}

struct TyperWriterView_Previews: PreviewProvider {
    static var previews: some View {
        TyperWriterView(finalText: "Made by Lets")
    }
}
