//
//  ContentView.swift
//  Apple
//
//  Created by MacBook AIr on 13/03/2022.
//

import SwiftUI

struct contentView: View {
    //vars
    var ipadAir = 220
    var airPodsMax = 139.9
    var appleWATCH = 117.9
    var appleTV = 89.9
    var airTag = 10.9
    //states
    @State var a1 = 0
    @State var a2 = 0
    @State var a3 = 0
    @State var a4 = 0
    @State var a5 = 0
    @State var amount = 0.0
    var body : some View {
        VStack {
            
            Text ("Apple Store")
                .font(.largeTitle)
                .fontWeight(.black)
                .multilineTextAlignment(.center)
                .padding()
            
            Image("apple")
                .resizable()
                .frame(width: 130, height: 130)
                .scaledToFit()
            
            Text("Products")
                .font(.title)
                .fontWeight(.regular)
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
        }
    }
    
    
    
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        contentView()
    }
}
}
