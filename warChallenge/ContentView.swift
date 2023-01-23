//
//  ContentView.swift
//  warChallenge
//
//  Created by Joshua Wright on 20/01/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card2"
    @State private var cpuCard = "card2"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background").ignoresSafeArea()
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
                Button {
                    //Generate random number between 2-14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    //Update Cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    //Update Scores
                    if playerRand > cpuRand {
                        playerScore += 1
                    }
                    else if cpuRand > playerRand{
                        cpuScore += 1
                    }
                    
                    
                } label: {
                    Image("dealbutton")
                }

                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .padding(.bottom)
                        Text(String(playerScore))
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .padding(.bottom)
                        Text(String(cpuScore))
                    }
                    Spacer()
                }
                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                Spacer()
            }
        }

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
