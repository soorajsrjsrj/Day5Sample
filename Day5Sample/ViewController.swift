//
//  ViewController.swift
//  Day5Sample
//
//  Created by SOORAJ SUNEESH on 2019-03-08.
//  Copyright © 2019 SOORAJ SUNEESH. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
  
    
    let country = ["usa","canada","africa","india"
                    ,"brazil","sri lanka","australia","china"]
    
    @IBOutlet weak var countrylabel: UILabel!
    @IBOutlet weak var countrypicker: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.countrypicker.delegate = self
        self.countrypicker.dataSource = self
    }


    @IBAction func BdayFigure(_ sender: UIDatePicker) {
        print (sender.date)
        print (sender)
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.country.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.country[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        countrylabel.text = self.country[row]
    }
}
