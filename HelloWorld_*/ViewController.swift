//
//  ViewController.swift
//  HelloWorld_*
//
//  Created by Артем Иванов on 30.09.2024.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var GreetingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.isHidden.toggle()
        GreetingButton.layer.cornerRadius = 10
    }
    
    @IBAction func greetingButtonDidTapped(_ sender: UIButton) {
        greetingLabel.isHidden.toggle()
        
//        if greetingLabel.isHidden {            // вместо данной логической конструкции можно применить тернарный оператор который реализован ниже
//            sender.setTitle("Show greeting", for: .normal)
//        } else {
//            sender.setTitle("Hide greeting", for: .normal)
//        }
        sender.setTitle(
            greetingLabel.isHidden ? "Show greeting" : "Hide greeting",
            for: .normal
        )
    }
}

