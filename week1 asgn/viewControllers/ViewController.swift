//
//  ViewController.swift
//  week1 asgn
//
//  Created by Sandi on 8/2/19.
//  Copyright © 2019 Sandi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtDatePicker: UITextField!
    private var datePicker: UIDatePicker?
    @IBAction func scGender(_ sender: UISegmentedControl) {
        selectedGenderIndex = sender.selectedSegmentIndex
    }
    var birthDate: String = ""
    var selectedGenderIndex: Int = -1
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        datePicker?.addTarget(self, action: #selector(self.selectDate(datePicker:)), for: .valueChanged)
        txtDatePicker.inputView = datePicker
    }


    @IBAction func btnRegister(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: ProfileViewController.identifier) as! ProfileViewController
        vc.birthDate = birthDate
        vc.selectedGenderIndex = selectedGenderIndex
        self.present(vc, animated: true, completion: nil)
    }
    
    @objc func selectDate(datePicker: UIDatePicker) {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        txtDatePicker.text = formatter.string(from: datePicker.date)
        birthDate = txtDatePicker.text ?? ""
        view.endEditing(true)
    }
}

