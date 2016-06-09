//
//  RedViewController.swift
//  InternalMessaging
//
//  Created by Jordan Donald on 6/9/16.
//  Copyright © 2016 Jordan Donald. All rights reserved.
//

import UIKit

class RedViewController: UIViewController, ChatDelegate {

    var delegate: ChatDelegate?
    var message: String?
    
    @IBOutlet weak var blueMessage: UILabel!
    
    
    @IBOutlet weak var yourMessage: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        
        self.blueMessage.text = message
        
    }

    
    @IBAction func sendButtonTapped(sender: UIButton) {
        
        if let delegate = self.delegate {
            
            delegate.getMessage(self.yourMessage.text)
            
        }
        
    }
    
    func getMessage(message: String?) {
        
        if message != nil {
            self.message = message
        }
        
    }

}
