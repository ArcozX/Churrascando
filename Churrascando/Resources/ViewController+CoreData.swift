//
//  ViewController+CoreData.swift
//  Churrascando
//
//  Created by Daniel Maia on 20/11/2018.
//  Copyright © 2018 Daniel Maia Alves. All rights reserved.
//

import UIKit
import CoreData

extension UIViewController {
    
    var context: NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
}
