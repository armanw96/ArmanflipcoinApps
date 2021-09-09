//
//  ContentView.swift
//  FlipACoinApp
//
//  Created by ArmanTW on 9/9/21.
//

import SwiftUI

struct ContentView: View {
    @State var isAnimated: Bool = false
    
    var body: some View {
        ZStack {
            
            Color.orange.edgesIgnoringSafeArea(.all)
            
        
            VStack {
            
                Rectangle()
                    .fill(isAnimated ? Color.blue : Color.pink)
                    .frame(
                        width: isAnimated ? 100 : 100,
                        height: isAnimated ? 100: 100,
                        alignment: .center)
                    .offset(y: isAnimated ? 610: 0)
                    .animation(
                        Animation.easeIn.repeatCount(randomCounter())
                    )
                Spacer()
                
                Button("Coin Flip") {
                    isAnimated.toggle()
                }// BUTTON
                .foregroundColor(.black)
                .background(
                    Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
                        
                )
                .font(.system(size: 34, weight: .heavy, design: .rounded))
                
                
                
            }
        }
    }
    
    
    func randomCounter() -> Int  {
        let random = Int.random(in: 0...50)
//        return print(Int(random))
        var number = random
        print(number)
        return number
        
        }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
