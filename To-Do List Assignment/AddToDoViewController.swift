//
//  AddToDoViewController.swift
//  To-Do List Assignment
//
//  Created by Aaron Brenner on 7/14/20.
//  Copyright © 2020 Isabella Brenner. All rights reserved.
//

import UIKit
import CoreData

class AddToDoViewController: UIViewController {
    var previousVC = ToDoTableViewController()
    
   
    
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var switchTapped: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
@IBAction func addTapped(_ sender: Any) {
   guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
                    return
                }
                
                let context = appDelegate.persistentContainer.viewContext
                
                let toDo = ToDoCD(context: context)
                
        toDo.name = textField.text
                toDo.important = switchTapped.isOn
                
                appDelegate.saveContext()
                
                navigationController?.popViewController(animated: true)
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


