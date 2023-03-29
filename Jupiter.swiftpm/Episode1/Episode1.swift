//
//  SwiftUIView.swift
//  
//
//  Created by A_Mcflurry on 2023/03/29.
//

import SwiftUI

struct Episode1: View {
    var body: some View {
        NavigationView(){
            NavigationLink(destination: Ep1Frame1(),
                           label: {
                Text("Next")
            })
            
        }   // navigationview
        
    }   // body
}   // ep1 view

struct Episode1_Previews: PreviewProvider {
    static var previews: some View {
        Episode1()
    }
}
