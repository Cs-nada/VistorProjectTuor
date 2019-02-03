//
//  CoreDataStack.swift
//  VistorProjectTuor
//
//  Created by Ndoo H on 03/02/2019.
//  Copyright © 2019 Ndoo H. All rights reserved.
//

import Foundation
import CoreData

class CoreDataStack {
    
    private let modelName: String
    
    init(modelName: String) {
        self.modelName = modelName
    }
    
    private lazy var storeContainer: NSPersistentContainer = {
        
        let container = NSPersistentContainer(name: self.modelName)
        container.loadPersistentStores { (storeDescription, error) in
            
            if let error = error as NSError? {
                print("Unresolved error loading persistent store: \(error), \(error.userInfo)")
            }
        }
        return container
    }()
    
    lazy var managedContext: NSManagedObjectContext = {
        return self.storeContainer.viewContext
    }()
    
    func saveContext() {
        
        guard managedContext.hasChanges else { return }
        
        do {
            try managedContext.save()
        } catch let error as NSError {
            print("Could not save context: \(error), \(error.userInfo)")
        }
        
    }
}
