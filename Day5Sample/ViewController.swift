//
//  ViewController.swift
//  Day5Sample
//
//  Created by SOORAJ SUNEESH on 2019-03-08.
//  Copyright © 2019 SOORAJ SUNEESH. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    let state = ["1","2","3"]
  
    
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
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return self.country.count
        }
        else if component == 1{
            return self.state.count
        }
        return self.country.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{
           return self.country[row]
        }
        else if component == 1{
            return self.state[row]
        }
        return self.country[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
       // countrylabel.text
}
}
