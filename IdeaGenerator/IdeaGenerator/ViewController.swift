//
//  ViewController.swift
//  IdeaGenerator
//
//  Created by Sneha Pankaj on 7/4/18.
//  Copyright © 2018 PankSibs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let startupName = ["Make School", "Uber", "Netflix", "Facebook", "Google", "Kickstarter", "Spotify", "Airbnb", "Snapchat", "YouTube", "Dropbox", "Amazon", "Craigslist", "Tinder", "Instagram", "Tesla", "Twitter", "SpaceX"]
    let categoryName = ["Dogs", "Books", "Gamers", "Star Wars", "Bitcoin", "Goats", "Zombies", "Rich People", "Swimmers", "Florida", "Vampires", "Dragons", "Internet of Things", "Mars", "Cryptocurrency", "Mosquito Repellent", "Fidget Spinners", "Sun Screen", "Water Bottles", "Lost Travelers", "Superheroes"]
    
    @IBOutlet weak var startupNameLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
   
    @IBAction func generatePressed(_ sender: Any) {
        let startupMaxIndex = UInt32(startupName.count)
        let startupRandomIndex = Int(arc4random_uniform(startupMaxIndex))
        startupNameLabel.text = startupName[startupRandomIndex]
        
        let categoryMaxIndex = UInt32(categoryName.count)
        let categoryRandomIndex = Int(arc4random_uniform(categoryMaxIndex))
        categoryLabel.text = categoryName[startupRandomIndex]
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

