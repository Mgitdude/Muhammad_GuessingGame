//
//  ContentView.swift
//  Muhammad_GuessingGame
//
//  Created by MUS on 2020-10-23.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Int? = nil

    @State private var attempts: Int = 5
    @State private var guessed_num: String = UserDefaults.standard.string(forKey: "guessed_num") ?? ""
    @State private var hint_message: String = UserDefaults.standard.string(forKey: "hint_message") ?? ""
    //@State private var temp_num: String? = ;
    
    var body: some View {
        NavigationView{
            var gg = GuessGame(value: Int.random(in:1...25))
            VStack{
           /* NavigationLink(destination: ScoreView(), tag: 1, selection: $selection) {}*/
                Spacer()
                Text("Guessing Game")
                    .foregroundColor(Color.blue)
                
                Text("You have to guess a number between 1 to 25. You have 5 attempts. Can you guess the number correctly?")
                
                TextField("Enter your guessed number", text: self.$guessed_num).keyboardType(.decimalPad)
                
                Text("\(self.attempts) attempts left")
                
                Button(action: {
                    if(self.guessed_num.isEmpty){
                        self.hint_message = "Please enter a number"
                    }
                    if(gg.value == Int(self.guessed_num)){
                        
                    }
                    

                }) {
                    Text("Check Answer")
                        .accentColor(Color.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(5.0)
                }
                Spacer()
                Text("\(self.hint_message)")

          }
            .navigationBarTitle(Text("Muhammad_GuessingGame"), displayMode: .inline)
            .navigationBarItems(trailing:
                                    Button(action: {
                                        self.selection = 1
                                    }) {
                                        Text("Score")
                                    }
                           
                        )
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
