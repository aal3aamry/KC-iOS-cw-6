//
//  ContentView.swift
//  BMICalc
//
//  Created by عبدالرحمن العامري on 14/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var weight = ""
    @State var height = ""
    @State var result = 0.0
    @State var status = ""
    var body: some View {
        ZStack{
            
            Image("bg1")
                .ignoresSafeArea()
                .scaledToFit()
            
            
            VStack{
                
            TextField("أدخل طولك", text: $height)
                    .padding()
                    .multilineTextAlignment(.center)
                
                    .background(Color.orange)
                    .cornerRadius(29)


            TextField("أدخل وزنك", text: $weight)
                    .padding()
                    .multilineTextAlignment(.center)
                
                    .background(Color.orange)
                    .cornerRadius(29)
                Spacer()
            }
            .padding()
            .frame(width: 340, height: 400)
            .background()
            .cornerRadius(20)
            .foregroundColor(.white)

            VStack{
                
            Button {
                result = BMICalc(wt: Double(weight) ?? 0.0, ht: Double(height) ?? 0.0)
                
                if result <= 20 {
                    status = "ضعيف"
                }
                
                else if result <= 25 {
                    status = "جيد"
                }
                
                 else  {
                    status = "سمين"
                }
                
                
            } label: {
                VStack{
                    Spacer()
                Text("احسب")
                    .foregroundColor(.white)
                    .padding()
                    .multilineTextAlignment(.center)
                
                    .background(Color.black)
                    .cornerRadius(29)
                }
            }
                VStack{
                    Spacer()
            Text("BMI = \(result)")
            Text ("الحالة =\(status)")
                }
                .padding()
                .frame(width: 200, height: 60)
                .foregroundColor(.white)
                .background(Color.brown)
                .cornerRadius(20)
                
                
        }
            .frame(width: 200, height: 100)
        
    }
    }
    func BMICalc (wt: Double, ht: Double) -> Double {
        return wt / (ht*ht)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
