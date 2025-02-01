//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Cancan on 30.01.2025.
//

import SwiftUI

struct ContentView: View {
    
    var selectableItem = ["👊","🖐️","✌️"]
    @State var userSelect = ""
    @State var computerSelect = ""
    @State var decision = ""
    
    func winner() -> String {
        
        switch userSelect {
        case selectableItem[0]:
            if computerSelect == selectableItem[0] {
                decision = "Tie"
            } else if computerSelect == selectableItem[1] {
                decision = "Computer Win"
            } else if computerSelect == selectableItem[2] {
                decision = "You Win"
            }
        case selectableItem[1]:
            if computerSelect == selectableItem[0] {
                decision = "You Win"
            } else if computerSelect == selectableItem[1] {
                decision = "Tie"
            } else if computerSelect == selectableItem[2] {
                decision = "Computer Win"
            }
        case selectableItem[2]:
            if computerSelect == selectableItem[0] {
                decision = "Computer Win"
            } else if computerSelect == selectableItem[1] {
                decision = "You Win"
            } else if computerSelect == selectableItem[2] {
                decision = "Tie"
            }
            
        default:
            print("wrong")
        }
        
        return decision
        
    }
    
    
    
     func getComputerSelect() -> Int {
        
        let randomNumber = Int.random(in: 0...2)
        
        if randomNumber == 0 {
             computerSelect = selectableItem[0]
        } else if randomNumber == 1 {
            computerSelect = selectableItem[1]
        } else if randomNumber == 2 {
            computerSelect = selectableItem[2]
        }
         
         return randomNumber
        
    }
    
    
    

    
    var body: some View {
        
        Text("Rock, Paper, Scissors")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.orange)
        Spacer()
        Text("Computer Choice ")
        Text("\(computerSelect)")
            .padding()
            .font(.largeTitle)
        Spacer()
        Text("\(decision)")
       
        
        
        
        Spacer()
        Text("Your Choice")
        HStack(spacing:50) {
            Button(action: {
                userSelect = selectableItem[0]
                getComputerSelect()
                winner()
                
                
            }, label: {
                Text(selectableItem[0])
                    .padding()
                    .font(.largeTitle)
            })
        
            
            Button(action: {
                userSelect = selectableItem[1]
                getComputerSelect()
                winner()
            }, label: {
                Text(selectableItem[1])
                    .padding()
                    .font(.largeTitle)
            })
            
            Button(action: {
                userSelect = selectableItem[2]
                getComputerSelect()
                winner()
            }, label: {
                Text(selectableItem[2])
                    .padding()
                    .font(.largeTitle)
            })
        }
        .padding()
    }
    
    
    
}






#Preview {
    ContentView()
}
