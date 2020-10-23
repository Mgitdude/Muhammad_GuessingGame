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
    @FetchRequest(entity: GuessingGame.entity(), sortDescriptors: []) var todo_tasks: FetchedResults<GuessingGame>
    
    private let moc : NSManagedObjectContext
    
    init(context: NSManagedObjectContext){
        self.moc = context
    }
    
    func insertVal(value: Bool){
       
        do{

            
        }catch let error as NSError{
            print("Something went wrong. Couldn't add value:(.")
            print("\(error) \(error.localizedDescription)")
        }
    }

}
