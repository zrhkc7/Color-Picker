//
//  ColorPickerViewController.swift
//  Color-Picker
//
//  Created by Zach Hogan on 11/12/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var colorTitle: UILabel!
    @IBOutlet weak var colorPickerView: UIPickerView!
    @IBOutlet var viewBackground: UIView!
    
    let colors = ["Red",
                 "Orange",
                 "Yellow",
                 "Green",
                 "Blue",
                 "Purple"]
    var selectedColor: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorPickerView.delegate = self
        colorPickerView.dataSource = self
        colorPickerView.backgroundColor = UIColor.red
        viewBackground.backgroundColor = UIColor.red
        colorTitle.text = "Red"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedColor = colors[row]
        colorTitle.text = selectedColor
        if( row == 0 )
        {
            colorPickerView.backgroundColor = UIColor.red
            viewBackground.backgroundColor = UIColor.red
        }
        if( row == 1 )
        {
            colorPickerView.backgroundColor = UIColor.orange
            viewBackground.backgroundColor = UIColor.orange
        }
        if( row == 2 )
        {
            colorPickerView.backgroundColor = UIColor.yellow
            viewBackground.backgroundColor = UIColor.yellow
        }
        if( row == 3 )
        {
            colorPickerView.backgroundColor = UIColor.green
            viewBackground.backgroundColor = UIColor.green
        }
        if( row == 4 )
        {
            colorPickerView.backgroundColor = UIColor.blue
            viewBackground.backgroundColor = UIColor.blue
        }
        if( row == 5 )
        {
            colorPickerView.backgroundColor = UIColor.purple
            viewBackground.backgroundColor = UIColor.purple
        }
        
    }
    
}

















