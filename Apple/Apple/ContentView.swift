//
//  ContentView.swift
//  Apple
//
//  Created by MacBook AIr on 13/03/2022.
//

import SwiftUI

struct ContentView: View {
    
    //vars
    var ipadAir = 220.0
    var airPodsMax = 139.9
    var appleWATCH = 117.9
    var appleTV = 89.9
    //states
    @State var a1 = 0.0
    @State var a2 = 0.0
    @State var a3 = 0.0
    @State var a4 = 0.0
    @State var amount = 0.0
    @State var money = ""
    @State var msg = ""
    var body : some View {
        VStack {
            
            Text ("Apple Store")
                .font(.largeTitle)
                .fontWeight(.black)
                .multilineTextAlignment(.center)
                .padding()
            
            Image("apple 1")
                .resizable()
                .frame(width: 130, height: 125)
                .scaledToFit()
            
            Text("Products")
                .font(.title)
                .fontWeight(.regular)
            HStack{
            Stepper("\(a1)", value: $a1,in: 0...12)
                Text("220 kd")
                Spacer()
                Text("ipadAir")
                    .font(.headline)
                    .fontWeight(.medium)
                Image("a1")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .scaledToFit()
                    }
            HStack{
            Stepper("\(a2)", value: $a2,in: 0...12)
                Text("139.9 kd")
                Spacer()
                Text("air PodsMax")
                    .font(.headline)
                    .fontWeight(.medium)
                Image("a2")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .scaledToFit()
                    }
            HStack{
            Stepper("\(a3)", value: $a3,in: 0...12)
                Text("117.9 kd")
                Spacer()
                Text("apple Watch")
                    .font(.headline)
                    .fontWeight(.medium)
                Image("a3")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .scaledToFit()
                    }
            HStack{
            Stepper("\(a4)", value: $a4,in: 0...12)
                Text("89.9 kd")
                Spacer()
                Text("apple TV")
                    .font(.headline)
                    .fontWeight(.medium)
                Image("a4")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .scaledToFit()
                    }
          
            Group{
                HStack{
                    Spacer()
                    
                    TextField("المبلغ", text: $money)
                    
                Text("المبلغ الذي لديك")
                }
                Text("اضغط لمعرفة الفاتورة")
                    .frame(width: 200, height: 60)
                    .background(Color.blue)
                    .cornerRadius(9)
                    .onTapGesture {
                        
                     let p1 = ipadAir * Double(a1)
                    let p2 = airPodsMax * Double(a2)
                     let p3 = appleWATCH * Double(a3)
                    let p4 = appleTV * Double(a4)
                   
                    amount = p1 + p2 + p3 + p4
                        if Double(money) ?? 0.0 >= amount{
                            msg = "تمت العملية بنجاح"
                         
                        }
                        else{
                            msg = "فشلت العملية"
                        }
                        
                        
                        }
           
                Text("المبلغ الاجمالي:\(amount,specifier: "%.2f")")
            Text(msg)
                
                
                
                
            }
            
            }
     
        }
    }
    
    
    
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

