//
//  ViewController.swift
//  FirstLessonSayapina
//
//  Created by Student on 15.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textfieldView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        textfieldView.layer.borderWidth = 1
        textfieldView.layer.borderColor = UIColor.systemPurple.cgColor
        textField.attributedPlaceholder = NSAttributedString(string: "Add some text..", attributes: [NSAttributedString.Key.foregroundColor : UIColor.purple])
        textfieldView.layer.cornerRadius = 4
    }

    @IBAction func touchMeButton(_ sender: Any)
    {
        if !textField.text!.isEmpty
        {
            showAlert(name: "Success", desc: textField.text!)
        }
        else
        {
            showAlert(name: "Error", desc: "No data in field")
        }
    }
    
    func showAlert(name: String, desc: String)
    {
        let alert = UIAlertController(title: name, message: desc, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
    }
    
}

