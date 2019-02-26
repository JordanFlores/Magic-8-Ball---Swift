//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Jordan Flores on 2/10/18.
//  Copyright © 2018 JordanFlores. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNum = 0
    

    @IBOutlet weak var ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        newBallImage()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func askButton(_ sender: UIButton) {
        
        newBallImage()
        
    }
    
    func newBallImage() {
    
        randomBallNum = Int(arc4random_uniform(5))
        
        ImageView.image = UIImage(named: ballArray[randomBallNum])
    
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
}

