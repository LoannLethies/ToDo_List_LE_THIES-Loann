//
//  ViewController.swift
//  TP_Loann
//
//  Created by Loann Le Thies on 09/11/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filterTaskArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! myTableViewCell
        cell.mylabel.text = filterTaskArr[indexPath.row].nom
        let row = indexPath.row
        
        if row%2 == 0 {
            cell.backgroundColor = UIColor.systemGray6
        }
        else {
            cell.backgroundColor = UIColor.white
        }
        
        cell.mylabel.text = filterTaskArr[row].nom
        
        if filterTaskArr[row].check {
            cell.accessoryType = UITableViewCell.AccessoryType.checkmark
        }
        else{
            cell.accessoryType = UITableViewCell.AccessoryType.none
        }
        return cell
    }
    
    
    var myData = [Todo]()
    var filterTaskArr = [Todo]()
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let configuration = UISwipeActionsConfiguration(actions: [UIContextualAction(style: .destructive, title: "Delete", handler: {(action, view, completionHandler) in
            let row = indexPath.row
            self.filterTaskArr.remove(at: row)
            completionHandler(true)
            tableView.reloadData()
        })
        ])
        return configuration
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
              
        myTableView.dataSource = self
        myTableView.delegate = self
        
        filterTaskArr = myData
        taskSearch.delegate = self
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? DetailViewController {
            let row = myTableView.indexPathForSelectedRow!.row
            vc.data = filterTaskArr[row]
        }
    }

    
    @IBOutlet weak var myTableView: UITableView!
    
    @IBOutlet weak var taskSearch: UISearchBar!
    @IBAction func Add(_ unwindSegue: UIStoryboardSegue) {
        if let vc = unwindSegue.source as? AddViewController{
            if let updateTodo = vc.data{
                let newTodo = Todo(nom: updateTodo.nom, description: updateTodo.description, check: false, date: updateTodo.date)
                myData.append(newTodo)
                filterTaskArr = myData
                myTableView.reloadData()
            
            }
            else{
                print("Error")
            }
        }
    
    }
    
    func searchBar(_ searchbar: UISearchBar, textDidChange searchText: String){
        filterTaskArr = []
        
        if searchText == "" {
            filterTaskArr = myData
        }
        for task in myData{
            if task.nom.uppercased().contains(searchText.uppercased()){
                filterTaskArr.append(task)
                
            }
        }
        self.myTableView.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        filterTaskArr = filterTaskArr.sorted(by: {$0.date < $1.date})
        myTableView.reloadData()
    }
}
