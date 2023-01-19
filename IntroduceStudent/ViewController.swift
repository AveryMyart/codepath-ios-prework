//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by Avery Myart on 1/18/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextBox: UITextField!
    @IBOutlet weak var lastNameTextBox: UITextField!
    @IBOutlet weak var schoolNameTextBox: UITextField!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var numberOfPetsStepper: UIStepper!
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
         
         numberOfPetsLabel.text = "\(Int(sender.value))"
     }
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    @IBOutlet weak var introduceSelfButton: UIButton!
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        
        // Lets us choose the title we have selected from the segmented control
        // In our example that is whether it is first, second, third or forth
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
        let introduction = "My name is \(firstNameTextBox.text!) \(lastNameTextBox.text!) and I attend \(schoolNameTextBox.text!). I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs. It is \(morePetsSwitch.isOn) that I want more pets."
        
        
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

