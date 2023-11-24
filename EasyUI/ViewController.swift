//
//  ViewController.swift
//  EasyUI
//
//  Created by YeongHo Ha on 11/21/23.
//

import UIKit

struct Family {
    let myName: String
    let bestFriendName : String
    let nextFriendName: String
    let myBrother: String
}

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bestFriendNameLabel: UILabel!
    @IBOutlet weak var nextFriendNameLabel: UILabel!
    
    let friendNames: [String] = ["Heon", "Jio", "Yeong", "Jin"]
    let koreanNames: [String: String] = ["Heon": "현", "Jio": "지오", "Yeong": "영"]
    let friend = Family (myName: "Heon1", bestFriendName: "Jio1", nextFriendName: "Yeong1", myBrother: "Jin")
    
    var count: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapButton(_ sender: Any) {
        /*
        nameLabel.text = friendNames[0]
        bestFriendNameLabel.text = friendNames[1]
        nextFriendNameLabel.text = friendNames[2]
        */
        
        
        nameLabel.text = friend.myName
        bestFriendNameLabel.text = friend.bestFriendName
        nextFriendNameLabel.text = friend.nextFriendName
        //friend.myBrother
    }
    
}

