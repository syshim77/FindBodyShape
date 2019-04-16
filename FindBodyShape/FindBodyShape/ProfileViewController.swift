//
//  ProfileViewController.swift
//  FindBodyShape
//
//  Created by sooyeon Shim on 10/03/2019.
//  Copyright © 2019 sooyeon Shim. All rights reserved.
//

import UIKit
import TextFieldEffects

class ProfileViewController: UIViewController {

    // MARK: - IBOutlet
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var goalWeightTextField: UITextField!
    @IBOutlet weak var genderSelection: UISegmentedControl!
    
    // MARK: IBAction
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func done(_ sender: UIBarButtonItem) {
        UserProfileInformation.sharedInstance.gender = genderSelection.selectedSegmentIndex
        //UserProfileInformation.sharedInstance.gender = genderSelection.titleForSegment(at: index) ?? ""
        UserProfileInformation.sharedInstance.name = nameTextField.text
        UserProfileInformation.sharedInstance.height = heightTextField.text
        UserProfileInformation.sharedInstance.weight = weightTextField.text
        UserProfileInformation.sharedInstance.goalWeight = goalWeightTextField.text
        
        //self.navigationController?.popViewController(animated: true)
        self.dismiss(animated: true, completion: nil)
    }
    
    // MARK: - Functions
    private func textFieldDesign() {
//        nameTextField = IsaoTextField(frame: textFieldFrame)
//        nameTextField.placeholderColor = .darkGrayColor()
//        nameTextField.foregroundColor = .lightGrayColor()
    }
    
    
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UserProfileInformation.sharedInstance.gender != nil,
            UserProfileInformation.sharedInstance.name != nil,
            UserProfileInformation.sharedInstance.height != nil,
            UserProfileInformation.sharedInstance.weight != nil,
            UserProfileInformation.sharedInstance.goalWeight != nil {
            nameTextField.text = UserProfileInformation.sharedInstance.name
            heightTextField.text = UserProfileInformation.sharedInstance.height
            weightTextField.text = UserProfileInformation.sharedInstance.weight
            goalWeightTextField.text = UserProfileInformation.sharedInstance.goalWeight
            genderSelection.selectedSegmentIndex = UserProfileInformation.sharedInstance.gender!
        }
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
