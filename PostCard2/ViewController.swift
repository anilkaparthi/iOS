//
//  ViewController.swift
//  PostCard2
//
//  Created by Anil on 3/17/17.
//  Copyright © 2017 Anil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageName: UITextField!
    @IBOutlet weak var messageText: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    @IBAction func buttonSendMessage(_ sender: UIButton) {
        
        messageLabel.isHidden=false
        messageLabel.text=messageText.text
        messageLabel.textColor = UIColor.red
        
        nameLabel.isHidden=false
        nameLabel.text=messageName.text
        nameLabel.textColor=UIColor.blue
        
        messageName.text=""
        messageName.resignFirstResponder()
        
        messageText.text=""
        messageText.resignFirstResponder()

        mailButton.setTitle("Mail Sent", for: UIControlState.normal)
        // comments
        
    }

}

