//
//  Guess_ViewModel.swift
//  Muhammad_GuessingGame
//
//  Created by MUS on 2020-10-23.
//

import Foundation
import CoreData
import SwiftUI
import UIKit

public class Guess_ViewModel : ObservableObject {

    private let moc : NSManagedObjectContext
    
    init(context: NSManagedObjectContext){
        self.moc = context
    }
    
    func insertVal(value: Bool){
       
        do{
         /*   let newVal = NSEntityDescription.insertNewObject(forEntityName: "GuessingGame", into: moc) as GuessingGame
            
            newVal.result = value;*/
            
            try moc.save()
            
        }catch let error as NSError{
            print("Something went wrong. Couldn't add value:(.")
            print("\(error) \(error.localizedDescription)")
        }
    }

}
