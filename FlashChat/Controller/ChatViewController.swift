//
//  ChatViewController.swift
//  FlashChat
//
//  Created by Prince Kumar on 2019/08/28.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import UIKit
import FirebaseAuth

class ChatViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet var sendButton: UIButton!
    @IBOutlet var messageTableView: UITableView!
    @IBOutlet var messageTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        messageTableView.delegate = self
        messageTableView.dataSource = self
        
        messageTableView.register(UINib(nibName: "CustomMessageCell", bundle: nil), forCellReuseIdentifier: "customMessageCell")
        
        configureTableView()
    }
    
    
    @IBAction func sendPressed(_ sender: Any) {
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customMessageCell", for: indexPath) as! CustomMessageCell
        
        
        let messageArray = ["First Message", "Second Mesasge Second Mesasge Second Mesasge Second MesasgeSecond Mesasge Second MesasgeSecond MesasgeSecond MesasgeSecond MesasgeSecond MesasgeSecond MesasgeSecond MesasgeSecond Mesasge Second Mesasge", "Third message"]
        
        cell.messageBody.text = messageArray[indexPath.row]
        
        return cell
    }
    
    func configureTableView() {
        messageTableView.rowHeight = UITableView.automaticDimension
        messageTableView.estimatedRowHeight = 120.0
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
