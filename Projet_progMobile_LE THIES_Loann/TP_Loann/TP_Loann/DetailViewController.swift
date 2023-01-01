//
//  DetailViewController.swift
//  TP_Loann
//
//  Created by Loann Le Thies on 09/12/2022.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        // Do any additional setup after loading the view.
        if let task = data{
            detailNom.text = task.nom
            detailDescription.text = task.description
            
            detailDate.text = dateFormatter.string(from: task.date)
            checkStatus.setOn(task.check, animated: true)
        }
        else{
            detailNom.text = "Error"
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
    @IBOutlet weak var detailNom: UILabel!
    @IBOutlet weak var detailDescription: UILabel!
    
    @IBOutlet weak var detailDate: UILabel!
    @IBAction func status(_ sender: UISwitch) {
        data?.check = !data!.check
    }
    @IBOutlet weak var checkStatus: UISwitch!
    let dateFormatter = DateFormatter()
    
    var data: Todo?
}
