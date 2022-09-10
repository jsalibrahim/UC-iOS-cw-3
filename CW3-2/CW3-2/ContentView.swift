//
//  ContentView.swift
//  CW3-2
//
//  Created by Jenan Alibrahim on 10/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var count1 = 0
    @State var count2 = 0
    @State var count3 = 0
    var body: some View {
        VStack{
            
            Text("عداد تسبيح")
                .font(.largeTitle)
                .bold()
            
            Spacer()
            
            HStack{
                
                VStack{
                    Text("استغفر الله ربي وأتوب إليه")
                        .font(.system(size: 22))
                        .padding()
                    
                    Text("سبحان الله وبحمده")
                        .font(.system(size: 22))
                        .padding()
                    
                    Text("الحمد لله رب العالمين")
                        .font(.system(size: 22))
                        .padding()
                }
                
                VStack{
                    counter(count: $count1)
                    counter(count: $count2)
                    counter(count: $count3)
                    
                }
            }
            
            Spacer()
        }
    }
}

struct counter: View {
    
    @Binding var count : Int
    
    var body: some View {
        
        Text("\(count)")
            .frame(width: 30, height: 30)
            .foregroundColor(.white)
            .font(.system(size: 22))
            .background(.gray)
            .padding()
            .onTapGesture {
                count = count + 1
            }
           
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
