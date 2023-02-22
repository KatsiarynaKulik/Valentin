//
//  ViewController.swift
//  Valentin
//
//  Created by Екатерина  on 13.02.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    
    //@IBOutlet weak var resultButton: UIButton!
    private var numberOdDays = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //resultButton.layer.cornerRadius = 12
    }

    @IBAction func datePicker(_ sender: UIDatePicker) {
        let range = sender.date..<Date.now
        numberOdDays = range.formatted(.components(style: .wide, fields: [.day]))
    }
    @IBAction func resultButtonTapped() {
        infoLabel.text = "Я наслаждаюсь тобой уже \(numberOdDays)"
    }
    
}

