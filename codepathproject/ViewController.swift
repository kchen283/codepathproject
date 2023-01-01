//
//  ViewController.swift
//  codepathproject
//
//  Created by Keri Chen on 12/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstnametext: UITextField!
    @IBOutlet weak var lastNameText: UITextField!
    @IBOutlet weak var schoolText: UITextField!
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var numberPets: UILabel!
    
    @IBOutlet weak var petsStepper: UIStepper!
    @IBOutlet weak var petsSwitch: UISwitch!
    
    @IBAction func changePetNumber(_ sender: UIStepper) {
       numberPets.text = "\(Int(sender.value))"
   }
    @IBAction func IntroduceSelf(_ sender: UIButton) {
        // Let's us chose the title we have selected from the segmented control
        // In our example that is whether it is first, second, third or forth
        let year = segmentControl.titleForSegment(at: segmentControl.selectedSegmentIndex)
        
        // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
        let introduction = "Hi! My name is \(firstnametext.text!) \(lastNameText.text!) and I attend \(schoolText.text!). I am currently in my \(year!) year and I own \(numberPets.text!) dogs. It is \(petsSwitch.isOn) that I want more pets."
        
        print(introduction)
        
        // Creates the alert where we pass in our message, which our introduction.
                let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
                
                // A way to dismiss the box once it pops up
                let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
                
                // Passing this action to the alert controller so it can be dismissed
                alertController.addAction(action)
                
                present(alertController, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

