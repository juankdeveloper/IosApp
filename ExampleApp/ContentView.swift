//
//  ContentView.swift
//  ExampleApp
//
//  Created by familia on 8/4/23.
//

import SwiftUI

struct ContentView: View {
     
    @State var playerCard = "card2"
    @State var cpuCard = "card2"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background-plain")
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()

                Button {
                    change()
                } label: {
                    Image("button")
                }

                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                        Text(String(playerScore))
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                        Text(String(cpuScore))
                    }
                    Spacer()
                }.font(.title)
                    .foregroundColor(.white)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                Spacer()

            }
                
        }.ignoresSafeArea()
    }
    func change() {
        let playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        let cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        if playerCardValue > cpuCardValue {
            playerScore += 1
        }else if cpuCardValue > playerCardValue {
            cpuScore += 1
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
