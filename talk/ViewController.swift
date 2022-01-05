//
//  ViewController.swift
//  talk
//
//  Created by kommunicate on 20/12/21.
//

import UIKit
import SwiftUI
import Kommunicate

class ViewController: UIViewController, KMPreChatFormViewControllerDelegate {
    func userSubmittedResponse(name: String, email: String, phoneNumber: String, password: String) {
        print("word \(name) \(email) \(phoneNumber)")
    }
    
    func closeButtonTapped() {
        print("Close Button clicked")
    }
    
    let userId = Kommunicate.randomId()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Pass an instance of the current UIViewController in the 'from' argument.
        
        
    }
    
    @IBAction func buttonClicked(_ sender:Any){
        print("Button Clicked")
//        let userId = Kommunicate.randomId()
//
//        let kmUser = KMUser()
//        kmUser.userId = userId
//
//        kmUser.applicationId = "2bf085baaad3f559103cf127c1cc98c10"
//
//        // Use this same API for login
//        Kommunicate.registerUser(kmUser, completion: {
//            response, error in
//            guard error == nil else {return}
//            print("Success")
//
//            Kommunicate.createAndShowConversation(from: self) { error in
//                guard error == nil else {
//                    print("Conversation error: \(error.debugDescription)")
//                    return
//                }
//                // Success
//            }
//        })
        
        let preChatVC = KMPreChatFormViewController(configuration: Kommunicate.defaultConfiguration)
        preChatVC.delegate = self // set the delegate to self to receive callbacks
        self.present(preChatVC, animated: false, completion: nil) // To present
        
    }
}

