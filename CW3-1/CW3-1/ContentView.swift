//
//  ContentView.swift
//  CW3-1
//
//  Created by Jenan Alibrahim on 10/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var grade = ""
    @State var finalgrde = ""
    
    var body: some View {
        
        VStack{
            
            
            Text("حاسبة الدرجات")
                .font(.largeTitle)
                .bold()
            

            
            Image("GC")
                .resizable()
                .scaledToFit()
                .font(.largeTitle)
                .frame(width: 400, height: 200)
            
            
            TextField("أدخل الدرجة", text: $grade)
                .multilineTextAlignment(.center)
                .frame(width: 300, height: 20)
                .padding(20)
            
                
            ZStack{
                Capsule()
                    .foregroundColor(.gray)
                    .frame(width: 100, height: 30)
                
                VStack{
                Text("احسب درجتي")
                    .foregroundColor(Color.white)
                    .onTapGesture {
                        let g = Double(grade) ?? 0
                        
                        if g >= 90.0 && g <= 100
                {
                            finalgrde = "ممتاز"
                        }
                        else if g >= 80.0 && g < 90
                        {
                            finalgrde = "جيد جيدًا"
                        }
                        else if g >= 70.0 && g < 80
                        {
                            finalgrde = "جيد"
                        }
                        else if g >= 60.0 && g < 70
                        {
                            finalgrde = "مقبول"
                        }
                        else
                        {
                            finalgrde = "ضعيف"
                        }
                    }
                }
            }

            
            Text(finalgrde)
                .bold()
                .font(.largeTitle)
                .padding(77)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
