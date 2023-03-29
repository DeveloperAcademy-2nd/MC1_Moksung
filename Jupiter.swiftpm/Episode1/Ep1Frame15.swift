//
//  SwiftUIView.swift
//  
//
//  Created by A_Mcflurry on 2023/03/29.
//

import SwiftUI

struct Ep1Frame15: View {
    @State var tag:Int? = nil
    var body: some View {
        
        ZStack{
            Color.backgroundColor.ignoresSafeArea()
            Image("1-15")
            
        }
    .ignoresSafeArea(.all)
    .background(Color.backgroundColor)
    
}   // body
}

struct Ep1Frame15_Previews: PreviewProvider {
    static var previews: some View {
        Ep1Frame15()
    }
}
