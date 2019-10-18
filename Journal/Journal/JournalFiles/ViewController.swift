//
//  ViewController.swift
//  MoodBash
//
//  Created by Bo on 10/15/19.
//  Copyright © 2019 Jessica Trinh. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    


    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var rageButton: UIButton!
    
    var count: Int = 0
    var counting: Bool = false
    var timer: Timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func rageButton(_ sender: UIButton) {
        if counting {
            //stop counting
        } else if !counting {
            //start counting
            rageButton.setTitle("Stop Counting", for: .normal)
            //start timer
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(counter), userInfo: nil, repeats: true)
        }
    }
    
    @objc func counter() -> Void {
        
        count += 1
        countLabel.text = "Count: " + String(count)
    }


}

