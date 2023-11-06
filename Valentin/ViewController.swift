//
//  ViewController.swift
//  Valentin
//
//  Created by Katsiaryna Kulik  on 13.02.23.
//  Copyright © 2023 Katsiaryna Kulik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
  @IBOutlet weak var resultButton: UIButton!

    private var numberOdDays = ""

    private var maxDate: Date?

    override func viewDidLoad() {
        super.viewDidLoad()
        maxDate = Date()
      resultButton.isHidden = true
    }

    @IBAction func datePicker(_ sender: UIDatePicker) {
      if sender.date > maxDate! {
          sender.setDate(maxDate!, animated: true)
      } else {
        resultButton.isHidden = false
      }
      let selectedDate = sender.date
      let isToday = Calendar.current.isDate(selectedDate, inSameDayAs: Date())
      resultButton.isHidden = isToday

      let range = selectedDate..<Date()
      numberOdDays = range.formatted(.components(style: .wide, fields: [.day]))
  }

    @IBAction func resultButtonTapped() {
        infoLabel.text = "I've been enjoying you for \(numberOdDays)"
    }
    
}

