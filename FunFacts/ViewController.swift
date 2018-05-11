//
//  ViewController.swift
//  FunFacts
//
//  Created by Yeonhee Seo on 2018-05-09.
//  Copyright © 2018 Ilgu Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    let factProvider=FactProvider()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text=factProvider.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFact() {
        //print("You pressed me")
        funFactLabel.text=factProvider.randomFact()
    }
    
    
}

