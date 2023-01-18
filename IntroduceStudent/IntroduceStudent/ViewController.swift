//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by Tian Chen on 1/15/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var FirstNameTextField: UITextField!
    @IBOutlet weak var LastNameTextField: UITextField!
    @IBOutlet weak var SchoolTextField: UITextField!
    
    @IBOutlet weak var yearSegmentController: UISegmentedControl!
    @IBOutlet weak var NumPetLabel: UILabel!
    @IBOutlet weak var MorePetStepper: UIStepper!
    @IBOutlet weak var MorePetSwitch: UISwitch!
    
    
    
    
    @IBAction func StepperDidChange(_ sender: UIStepper) {
        NumPetLabel.text="\(Int(sender.value))"
    }
    
    @IBOutlet weak var IntroduceSelfButton: UIButton!
    @IBAction func IntroduceSelfClicked(_ sender: UIButton) {
        let year=yearSegmentController.titleForSegment(at: yearSegmentController.selectedSegmentIndex)
        let introduction="Hello my name is \(FirstNameTextField.text!) \(LastNameTextField.text!) and I am a \(year!) year student attending \(SchoolTextField.text!). I own \(NumPetLabel.text!) pet and it is \(MorePetSwitch.isOn) that I want more.  "
        let alertController=UIAlertController(title: "My Introduction", message:introduction, preferredStyle:.alert)
        let action=UIAlertAction(title:"Nice to meet you", style:.default, handler: nil)
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
        
        
    }
    
    @IBOutlet weak var FirstLabel: UILabel!
    @IBOutlet weak var SchoolLabel: UILabel!
    @IBOutlet weak var LastLabel: UILabel!
    @IBOutlet weak var DarkModeLabel: UILabel!

    @IBOutlet weak var PetsLabel: UILabel!
    
    @IBOutlet weak var MorePetsLabel: UILabel!
    @IBOutlet weak var DarkMode: UISwitch!
    @IBAction func DarkModeSwitch(_ sender: Any) {
        
        if(DarkMode.isOn){
            
            view.backgroundColor=UIColor.white
            NumPetLabel.textColor=UIColor.black
            DarkModeLabel.textColor=UIColor.black
            FirstLabel.textColor=UIColor.black
            LastLabel.textColor=UIColor.black
            SchoolLabel.textColor=UIColor.black
            PetsLabel.textColor=UIColor.black
            MorePetsLabel.textColor=UIColor.black
            yearSegmentController.backgroundColor=UIColor.white
            MorePetStepper.backgroundColor=UIColor.lightGray
            
            
            
        }
        else{
            view.backgroundColor=UIColor.darkGray
            NumPetLabel.textColor=UIColor.white
            DarkModeLabel.textColor=UIColor.white
            FirstLabel.textColor=UIColor.white
            LastLabel.textColor=UIColor.white
            SchoolLabel.textColor=UIColor.white
            PetsLabel.textColor=UIColor.white
            MorePetsLabel.textColor=UIColor.white
            yearSegmentController.backgroundColor=UIColor.white
            MorePetStepper.backgroundColor=UIColor.lightGray
            
          
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

