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

}
