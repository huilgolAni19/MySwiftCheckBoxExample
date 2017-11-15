//
//  ViewController.swift
//  CheckBoxExample
//
//  Created by Anirudh on 15/11/17.
//  Copyright © 2017 VRL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonCheckBox: UIButton!
    @IBOutlet weak var lableCheckbox: UILabel!
    var isChecked: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib
        changeCheckBox()
    }

    @IBAction func checkBoxClicked(sender: UIButton) {
        changeCheckBox()
    }

    func changeCheckBox() {
        isChecked = !isChecked
        if isChecked == true {
            let imageForButton = UIImage(named: "ic_check_box")
            buttonCheckBox.setImage(imageForButton, forState: .Normal)
            lableCheckbox.text = "Check Box 'True'"
        } else {
            let imageForButton = UIImage(named: "ic_check_box_outline_blank")
            buttonCheckBox.setImage(imageForButton, forState: .Normal)
            lableCheckbox.text = "Check Box 'false'"
        }
    }
}

