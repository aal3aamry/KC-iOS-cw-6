//
//  ContentView.swift
//  cw5
//
//  Created by ... on 23/06/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var counter: [Int] = [0, 0, 0]
    
    var body: some View {
        ZStack{
            Image("bg1")
                .scaledToFit()
                .ignoresSafeArea()
                .frame(width: 100, height: 100)
        
        VStack{
            HasanatView(MyHasanat: $counter[0], title: "أستغفر الله العظيم")
            HasanatView(MyHasanat: $counter[1], title: "سبحان الله وبحمده")
            HasanatView(MyHasanat: $counter[2], title: "سبحان الله العظيم")
            
           Text("إعادة")
                .padding()
                .frame(width: 100, height: 100)
                .background(Color.green.opacity(0.4))
                .foregroundColor(.white)
                .font(.title)
                .clipShape(Circle())
                
                .onTapGesture {
                    counter = [0, 0, 0]
                }
                

            
        }
        }
    }
}


// يجب عمل extract

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HasanatView: View {
    
    @Binding var MyHasanat: Int
    @State var title: String
    var body: some View {
        HStack{
            Text(title).font(.title)
                .padding()

                .foregroundColor(.white)
                .background(Color.gray.opacity(0.5))
                .cornerRadius(10)
            Spacer()
            Text("\(MyHasanat)")
                .font(.largeTitle)
                .frame(width: 80, height: 100, alignment: .center)
                .foregroundColor(.white)
                .background(Color.black.opacity(0.6))
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding()
                .onTapGesture {
                    MyHasanat = MyHasanat + 1
                }
        }.padding()
    }
}
