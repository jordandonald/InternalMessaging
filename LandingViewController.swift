//
//  LandingViewController.swift
//  InternalMessaging
//
//  Created by Jordan Donald on 6/9/16.
//  Copyright © 2016 Jordan Donald. All rights reserved.
//

import UIKit

class LandingViewController: UIViewController {

    let rvc = RedViewController (nibName: "RedViewController", bundle:nil)
    let bvc = BlueViewController (nibName: "BlueViewController", bundle:nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rvc.delegate = bvc
        bvc.delegate = rvc

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func redButtonTapped(sender: UIButton) {
        
        self.navigationController?.pushViewController(rvc, animated: true)

    }
    
    
    @IBAction func blueButtonTapped(sender: UIButton) {
        
        self.navigationController?.pushViewController(bvc, animated: true)
        
    }

}

protocol ChatDelegate {
    
    func getMessage(message: String?)
    
}
