//
//  ViewController.swift
//  LiveDemo - Week 03 - Simple IOS App
//
//  Created by Indrajeet Patwardhan on 9/5/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var factLabel: UILabel!
    @IBOutlet var leftButton: UIButton!
    @IBOutlet var rightButton: UIButton!
    
    var factIndex: Int = 0
    var facts: [String] = [
        "You can't hum if you're holding your nose.",
        "The western lowland gorilla's scientific name is gorilla gorilla gorilla.",
        "One of Barry Manalow's most popular songs is \"I write the songs\", which he did not write."
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.adjustFactIndex(0)
//        if let btn = self.leftButton{
//
//            if(btn.isHidden){
//                print("The button was hidden")
//            }
//        }
        
    }
    @IBAction func prevButtonClicked(_ button: UIButton){
        print("Prev button was clicked")
        self.adjustFactIndex(-1)
    }
    @IBAction func nextButtonClicked(_ button: UIButton){
        print("Next button was clicked")
        self.adjustFactIndex(1)
    }
    
    func adjustFactIndex(_ amount:Int){
        
        self.factIndex += amount
        
        if(self.factIndex >= self.facts.count){
            self.factIndex = 0
        }
        else if(self.factIndex < 0){
            self.factIndex = self.facts.count - 1
        }
        
        self.updateFactLabel()
    }
    
    func updateFactLabel(){
        self.factLabel.text = self.facts[self.factIndex]
    }

}

