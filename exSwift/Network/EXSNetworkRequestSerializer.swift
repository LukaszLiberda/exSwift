//
//  EXSNetworkRequestSerializer.swift
//  exSwift
//
//  Created by lukaszliberda on 06.12.2014.
//  Copyright (c) 2014 lukaszliberda. All rights reserved.
//

import UIKit

class EXSNetworkRequestSerializer : AFJSONRequestSerializer, AFURLRequestSerialization, NSSecureCoding, NSCopying {
    
    var authenticationToken: String?
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    required override init() {
        super.init()
    }
    
    override func requestBySerializingRequest(request: NSURLRequest!, withParameters parameters: AnyObject!, error: NSErrorPointer) -> NSURLRequest! {
        let token = authenticationToken
        
        if token != nil && token!.utf16Count > 0 {
            var mutableParameters = NSMutableDictionary()
            if let parameters = parameters as? NSDictionary {
                mutableParameters = parameters.mutableCopy() as NSMutableDictionary
            }
            
            mutableParameters.setObject(authenticationToken!, forKey: "token")
            
            return super.requestBySerializingRequest(request, withParameters: mutableParameters.copy(), error: error)
        } else {
            return super.requestBySerializingRequest(request, withParameters: parameters, error: error)
        }
    }

}
