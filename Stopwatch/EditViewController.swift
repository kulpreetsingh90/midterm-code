//
//  EditViewController.swift
//  Stopwatch
//
//  Created by Ashley Blacquiere
//  Copyright © 2019 Your School. All rights reserved.
//

import UIKit

protocol ColorChangeDelegate {
    func userDidClick(data: String)
}

class EditViewController: UIViewController {
    
    var delegate: ColorChangeDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    

    @IBAction func colorChange(_ sender: Any) {
        
        if delegate != nil{
            let data = "hello"
            delegate?.userDidClick(data: data)
           navigationController?.popViewController(animated: true)
        }
    }
}
