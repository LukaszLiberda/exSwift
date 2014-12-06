//
//  EXSCoreDataUser.swift
//  exSwift
//
//  Created by lukaszliberda on 06.12.2014.
//  Copyright (c) 2014 lukaszliberda. All rights reserved.
//

import Foundation
import CoreData

class EXSCoreDataUser: NSManagedObject {

    @NSManaged var id: String
    @NSManaged var name: String

}
