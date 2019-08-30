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

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
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
