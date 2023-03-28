//
//  Episode1.swift
//  
//
//  Created by 한지석 on 2023/03/27.
//

import SwiftUI

struct Episode1: View {
    var body: some View {
        VStack {
            Spacer()
            Rectangle()
                .textField("   대망의 첫 CBL,\n첫 MC1 시작이다.")
        }
        .background(Color.backgroundColor)
    }
}
    


struct Episode1_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Episode1()
        }
    }
}
