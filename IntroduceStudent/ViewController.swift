//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by Avery Myart on 1/18/23.
//

import UIKit

class ViewController: UIViewController {

    // Textfields to store user's first, last, and school name.
    @IBOutlet weak var firstNameTextBox: UITextField!
    @IBOutlet weak var lastNameTextBox: UITextField!
    @IBOutlet weak var schoolNameTextBox: UITextField!
    
    // Segmented control to allow user to select their student year.
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    // User can use stepper to indicate the number pets they have. User can use switch to indicate whether they want more pets.
    @IBOutlet weak var morePetsLabel: UILabel!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var numberOfPetsStepper: UIStepper!
    
    // Updates the number of pets label when stepper is pressed
    @IBAction func stepperDidChange(_ sender: UIStepper) {
         
         numberOfPetsLabel.text = "\(Int(sender.value))"
     }
    
    // Allows user to create an introduction message using their input
    @IBOutlet weak var introduceSelfButton: UIButton!
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        
        // Lets us choose the title we have selected from the segmented control
        // In our example that is whether it is first, second, third or forth
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
        // Edited introduction to include the student's major and hobby.
        let introduction = "My name is \(firstNameTextBox.text!) \(lastNameTextBox.text!) and I attend \(schoolNameTextBox.text!). I am currently in my \(year!) year and I am studying \(majorTextBox.text!). I enjoy \(hobbyTextBox.text!) and I own \(numberOfPetsLabel.text!) pets. It is \(morePetsSwitch.isOn) that I want more pets."
        
        // Creates the alert where we pass in our message, which is our introduction.
        let alertController = UIAlertController(title: "Hello! 👋🏽", message: introduction, preferredStyle: .alert)
        
        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
       }
    
    //Button that allows student to change the background color.
    @IBOutlet weak var backgroundColorButton: UIButton!
    @IBAction func changeColorDidTapped(_ sender: UIButton) {
        self.view.backgroundColor = UIColor.red
    }
    
    //Adds two additional fields to collect student's major and hobby.
    @IBOutlet weak var majorLabel: UILabel!
    @IBOutlet weak var majorTextBox: UITextField!
    
    @IBOutlet weak var hobbyLabel: UILabel!
    @IBOutlet weak var hobbyTextBox: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

