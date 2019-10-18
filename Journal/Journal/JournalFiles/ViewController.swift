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
        
        countLabel.text = "0"
    }
    
    
    @IBAction func rageButton(_ sender: UIButton) {
        self.count += 1
        self.countLabel.text = String(self.count)
    }
    
    
    @IBAction func resetButton(_ sender: Any) {
        self.count = 0
        self.countLabel.text = String(self.count)
    }
    
    
    @objc func counter() -> Void {
        
        count += 1
        countLabel.text = "Count: " + String(count)
    }


}

