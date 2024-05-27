//
//  ContentView.swift
//  war-card-game
//
//  Created by Shubham Saurabh on 26/05/24.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card2"
    @State var cpuCard = "card3"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    deal()
                }, label: {
                    Image("button")
                })
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
        }
    }
    
    func deal(){
        let playerNumber = Int.random(in: 2...14)
        let cpuNumber = Int.random(in: 2...14)
        playerCard = "card" + String(playerNumber)
        cpuCard = "card" + String(cpuNumber)
        
        if(playerNumber > cpuNumber){
            playerScore += 1
        }
        if(playerNumber == cpuNumber){
            cpuScore += 1
        }
        
    }
}

#Preview {
    ContentView()
}
