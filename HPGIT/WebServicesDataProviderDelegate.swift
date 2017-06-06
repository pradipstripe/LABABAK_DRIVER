//
//  WebServicesDataProviderDelegate.swift
//  HPGIT
//
//  Created by iBlazing Mac User 2 on 31/05/17.
//  Copyright © 2017 HP. All rights reserved.
//

import UIKit

protocol WebServicesDataProviderDelegate {
    func dataReceivesFromServer(_ responseData:NSDictionary) -> Void
}



class WebServicesDataProvider: NSObject {
    
    var delegate:WebServicesDataProviderDelegate! = nil
    static var webDataProvider = WebServicesDataProvider()
    
    class var sharedInstance: WebServicesDataProvider {
        return webDataProvider
    }
    
    class func sharesInstanceWithDelegate(_ delegate:WebServicesDataProviderDelegate) -> WebServicesDataProvider {
        webDataProvider.delegate = delegate
        return webDataProvider
    }
    
    
    
    func sendRequestToServer(_ requestObject:NSDictionary, url:NSString, requestMethod:Int) -> Void {
        
//        let manager = AFHTTPRequestOperationManager()
//        manager.requestSerializer.timeoutInterval = 60.0
        //manager.responseSerializer.acceptableContentTypes = NSSet(object: "text/html") as Set<NSObject>
        
        
        
        
    }
    
    
    
    


}
