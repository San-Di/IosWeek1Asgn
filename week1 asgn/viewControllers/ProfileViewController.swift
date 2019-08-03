//
//  ProfileViewController.swift
//  week1 asgn
//
//  Created by Sandi on 8/3/19.
//  Copyright © 2019 Sandi. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var lblBirthDate: UILabel!
    @IBOutlet weak var lblGender: UILabel!
    static let identifier = "ProfileViewController"
    var birthDate: String = ""
    var selectedGenderIndex: Int = -1
    override func viewDidLoad() {
        super.viewDidLoad()

        lblBirthDate.text = birthDate ?? ""
        
        switch selectedGenderIndex {
        case 0:
            lblGender.text = "Male"
            break
        case 1:
            lblGender.text = "Female"
            break
        case 2:
            lblGender.text = "Others"
            break
        default:
            break
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
