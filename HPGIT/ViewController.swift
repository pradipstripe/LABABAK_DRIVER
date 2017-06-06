//
//  ViewController.swift
//  HPGIT
//
//  Created by iBlazing Mac User 2 on 27/05/17.
//  Copyright © 2017 HP. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Hello Pradip 12345
        
        //HEllo 12345

        Get_client_list()
    }

    
    func Get_client_list(){
        
        Alamofire.request(
            URL(string: "http://103.240.35.217:8081/api/SubscriptionSetting/MGetSubscriptionPlan")!,
            method: .get,
            parameters: ["include_docs": "true"])
            .validate()
            .responseJSON { (response) -> Void in
                
                //print(response)
                
                if((response.result.value) != nil) {
                    
                    let swiftyJsonVar = JSON(response.result.value!)
                    print("API RESPONSE \n",swiftyJsonVar);
                    
                    let resData = swiftyJsonVar["Data"].arrayObject
                    print("COMPANY LIST \n",resData as! [[String:AnyObject]]);
                    

//                    print("Plan Name :",dict["name"] as? String)
                    
                    
                    
                    
                }
                

        }
        
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    


}

