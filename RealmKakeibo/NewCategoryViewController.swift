//
//  NewCategoryViewController.swift
//  RealmKakeibo
//
//  Created by Haruto Hamano on 2023/05/11.
//

import UIKit
import RealmSwift

class NewCategoryViewController: UIViewController {

    @IBOutlet var categoryTextField: UITextField!
    
    let realm = try! Realm()
    var category: Category!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func save(){
        let category = Category()
        category.title = categoryTextField.text ?? ""
        createCategory(category: category)
        
        self.dismiss(animated: true)
    }
    

    func createCategory(category: Category){
        try! realm.write {
            realm.add(category)
        }
    }

}
