//
//  CoreDataStack.swift
//  MoodBash
//
//  Created by Bo on 10/15/19.
//  Copyright © 2019 Jessica Trinh. All rights reserved.
//

import CoreData

class CoreDataStack {
    
    static let shared = CoreDataStack()
    
    lazy var container: NSPersistentContainer = {
        
        // Give the container the name of your data model file
        let container = NSPersistentContainer(name: "Journal")
        
        // Load the persistent store
        container.loadPersistentStores { (_, error) in
            if let error = error {
                fatalError("Failed to load persistent stores: \(error)")
            }
        }
        
        return container
    }()
    
    // This should help you remember that the viewContext should be used on the main thread
    var mainContext: NSManagedObjectContext {
        return container.viewContext
    }
}
