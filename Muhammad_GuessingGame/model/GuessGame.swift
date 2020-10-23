//
//  GuessGame.swift
//  Muhammad_GuessingGame
//
//  Created by MUS on 2020-10-23.
//

import Foundation

struct GuessGame :  Identifiable, Hashable {
    var id = UUID().uuidString
    var value: Int = 0
    
    init(){}
    
    init(value: Int){
        
        if(value != nil){
        self.value = value
        }
        else{
            self.value = 0;
        }

    }
}
