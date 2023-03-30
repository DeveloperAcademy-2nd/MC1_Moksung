//
//  SwiftUIView.swift
//  
//
//  Created by 한지석 on 2023/03/29.
//

import SwiftUI

struct Ep3Frame4: View {
    var body: some View {
        VStack(spacing: 30) {
//            Color.white
            Spacer()
            Image("Frame5")
                .resizable()
                .frame(height: 275)
                .frame(maxWidth: .infinity)
            Text("The End")
                .font(.system(size: 40))
                .foregroundColor(.white)
            Spacer()
        }
        .background(Color.backgroundColor)
        .ignoresSafeArea(.all)
        
    }
}

struct Ep4Frame4_Previews: PreviewProvider {
    static var previews: some View {
        Ep3Frame4()
    }
}
