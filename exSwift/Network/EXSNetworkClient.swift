//
//  EXSNetworkClient.swift
//  exSwift
//
//  Created by lukaszliberda on 06.12.2014.
//  Copyright (c) 2014 lukaszliberda. All rights reserved.
//

import UIKit

class EXSNetworkClient: AFHTTPRequestOperationManager {

    convenience init!(url: NSURL!) {
        self.init(baseURL: url)
        self.requestSerializer = EXSNetworkRequestSerializer(writingOptions: nil)
        self.credential = NSURLCredential(user: "", password: "", persistence: .None)
        AFNetworkReachabilityManager.sharedManager().startMonitoring()
    }
    
    class var sharedManager : EXSNetworkClient {
        struct Static {
            static let instance: EXSNetworkClient = EXSNetworkClient()
        }
        return Static.instance
    }

    func networkErrorFromOperation(operation: AFHTTPRequestOperation, error: NSError) -> () {
        let statusCode = operation.response?.statusCode ?? 0
    }
    
    func contentURLFromPath(path: String?) -> NSURL! {
        if let path = path {
            if !path.hasPrefix("http") {
                return NSURL(string: "")
            } else {
                return NSURL(string: path)
            }
        }
        
        return nil
    }

}
