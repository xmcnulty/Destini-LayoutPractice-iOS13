//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story {
    let title: String
    let choice1: StoryChoice
    let choice2: StoryChoice
    
    init(title: String, choice1: String, choice1Destination: Int, choice2: String, choice2Destination: Int) {
        self.title = title
        self.choice1 = StoryChoice(text: choice1, desintaion: choice1Destination)
        self.choice2 = StoryChoice(text: choice2, desintaion: choice2Destination)
    }
    
    func getChoices() -> [StoryChoice] {
        return [choice1, choice2]
    }
}
