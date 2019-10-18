//
//  ButtonsViewController.swift
//  Journal
//
//  Created by Bo on 10/18/19.
//  Copyright © 2019 Jessica Trinh. All rights reserved.
//

import Foundation
import UIKit

class ButtonsViewController: UIViewController {
    @IBOutlet weak var countLabel: UILabel!
       @IBOutlet weak var rageButton: UIButton!
       
    @IBOutlet weak var journalB: UIButton!
    var count: Int = 0
       var counting: Bool = false
       var timer: Timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         countLabel.text = "0"
        layout()
    }
    func layout() {
        if let rageButton = rageButton {
            rageButton.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            rageButton.layer.borderWidth = 1.5
            rageButton.layer.cornerRadius = rageButton.frame.height / 2
            rageButton.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
            rageButton.setTitleColor(.white, for: .normal)
            
            
        }
    }
    
    @IBAction func rageButton(_ sender: UIButton) {
        sender.shake()
        self.count+=1
        self.countLabel.text = String(self.count)
    }
    
    
    @IBAction func JournalTapped(_ sender: Any) {
        print("the journal button was tapped!")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
       let vc = storyboard.instantiateViewController(withIdentifier: "journalVC")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func resetButton(_ sender: Any) {
        self.count = 0
        self.countLabel.text = String(self.count)
    }
    
}
