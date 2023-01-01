//
//  AddViewController.swift
//  TP_Loann
//
//  Created by Loann Le Thies on 15/12/2022.
//

import UIKit

class AddViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        data!.nom = nameTask.text!
        data!.description = descTask.text!
        return true
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    let dateFormatter = DateFormatter()
    
    
    @IBOutlet weak var nameTask: UITextField!
    @IBOutlet weak var descTask: UITextField!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    var data : Todo?
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        data = Todo(nom: nameTask.text!, description: descTask.text!, check: false, date : datePicker.date)
    }}
