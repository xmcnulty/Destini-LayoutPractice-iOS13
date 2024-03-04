//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyText: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }

    func updateUI() {
        storyText.text = storyBrain.currentTitle
        
        let choices = storyBrain.currentChoices
        
        choice1Button.setTitle(choices[0].text, for: .normal)
        choice2Button.setTitle(choices[1].text, for: .normal)
    }
    
    @IBAction func choice1ButtonPressed(_ sender: UIButton) {
        storyBrain.choose(storyBrain.currentChoices[0])
        
        updateUI()
    }
    
    @IBAction func choice2ButtonPressed(_ sender: UIButton) {
        storyBrain.choose(storyBrain.currentChoices[1])
        
        updateUI()
    }
    
}

