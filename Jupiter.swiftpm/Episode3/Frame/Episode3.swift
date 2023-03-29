//
//  Episode3.swift
//  
//
//  Created by 한지석 on 2023/03/27.
//

import SwiftUI

struct Episode3: View {
    var body: some View {
        NavigationLink {
            Ep3Frame1()
        } label: {
            Text("NEXT")
        }

    }
}

struct Episode3_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Episode3()
        }
        
    }
}
