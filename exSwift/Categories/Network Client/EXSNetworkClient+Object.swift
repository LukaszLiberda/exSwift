//
//  EXSNetworkClient+Object.swift
//  exSwift
//
//  Created by lukaszliberda on 06.12.2014.
//  Copyright (c) 2014 lukaszliberda. All rights reserved.
//

//typealias name = ()->()

extension EXSNetworkClient {
    //methods
    func getsomething() {
        self.GET("url", parameters: nil, success: { operation, responseObject in
            
            EXSCoreDataUser.MR_findAll()
            
            MagicalRecord.saveWithBlock( {localContext in
            } , completion: { succes, error in
                
            })
            
        }, failure: { operation, error in
        
        })
    }
    
}
