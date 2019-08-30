//
//  ChatViewController.swift
//  FlashChat
//
//  Created by Prince Kumar on 2019/08/28.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import UIKit
import FirebaseAuth

class ChatViewController: UIViewController {

    @IBOutlet var messageTextField: UITextField!
    @IBOutlet var sendButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func sendPressed(_ sender: Any) {
        
    }
    
    @IBAction func logOutPressed(_ sender: Any) {
        do {
            try Auth.auth().signOut()
        } catch {
            print("error occurred")
        }
        
        guard (navigationController?.popToRootViewController(animated: true)) != nil  else {
            print("No view controller to pop offf")
            return
        }
        
    }
    
}
