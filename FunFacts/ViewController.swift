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
    @IBOutlet weak var funFactButton: UIButton!
    
    let factProvider=FactProvider()
    let colorProvicer=BackgroundColorProvider()
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
        let randomColor=colorProvicer.randomColor()
        view.backgroundColor=randomColor
        funFactButton.tintColor=randomColor
    }
    
    
}

