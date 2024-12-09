//
//  ContentView.swift
//  WarCardGame
//
//  Created by Treinetic on 2024-12-07.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card2"
    @State var cpuCard = "card3"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
    
        ZStack{
            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()

            VStack{
                Spacer()
                Image("logo")
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
              
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom,10)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("Cpu")
                            .font(.headline)
                            .padding(.bottom,10)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }.foregroundColor(.white)
                Spacer()
            }
            
           
        }
        
    }
    
    func deal(){
        let playerCardValue = Int.random(in: 2...14)
        let cpuCardValue = Int.random(in: 2...14)
        
        playerCard = "card" + String(playerCardValue)
        cpuCard = "card" + String(cpuCardValue)
        
        if playerCardValue > cpuCardValue{
            playerScore += 1
            
        }else if cpuCardValue > playerCardValue {
            cpuScore += 1
        }else{
            
        }
    }
}

#Preview {
    ContentView()
}
