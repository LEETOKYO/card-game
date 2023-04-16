//
//  ContentView.swift
//  slots challenge
//
//  Created by 李 on 2023/03/17.
//

import SwiftUI

struct ContentView: View {
    @State var slot1 = "pic1"
    @State var slot2 = "pic2"
    @State var slot3 = "pic3"
    @State var credit = 1000
    var body: some View {
        VStack {
            Text("SwiftUI Slots!")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.vertical)
             Spacer()
            Text("Credits: \(credit)")
            Spacer()
            HStack{
            
                Image(slot1)
                //重要！サイズの調整
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(slot2)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(slot3)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            Spacer()
          
            Button("Spin"){
                let  slot1rand = Int.random(in:1...3)
                let  slot2rand = Int.random(in:1...3)
                let  slot3rand = Int.random(in:1...3)
                slot1="pic"+String(slot1rand)
                slot2="pic"+String(slot2rand)
                slot3="pic"+String(slot3rand)
                //注意，if在button里面
                if slot1 == slot2 && slot2 == slot3 {
                    credit += 5}
                
                else {
                    credit -= 5
                }
                
            }
            .padding()
            //縦の広げ
            .padding(.horizontal, 20.0)         .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
            .background(.pink)
            .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
            //アップ
            Spacer()
          
            
            
            
           
        }
        .padding(/*@START_MENU_TOKEN@*/.all, 29.0/*@END_MENU_TOKEN@*/)
        
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

