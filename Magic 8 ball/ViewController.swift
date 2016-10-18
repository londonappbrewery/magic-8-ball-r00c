//
//  ViewController.swift
//  Magic 8 ball
//
//  Created by Rock Lee on 17/10/2016.
//  Copyright © 2016 Rock Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallIndex = 0
    

    @IBOutlet weak var ballImage: UIImageView!
    
    @IBAction func askButtom(_ sender: UIButton) {
        
        updateBallImages()
        
    }
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        updateBallImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        updateBallImages()
    }
    
    func updateBallImages() {
        
        randomBallIndex = Int(arc4random_uniform(5))
        
        ballImage.image = UIImage(named: ballArray[randomBallIndex])

    }

}

