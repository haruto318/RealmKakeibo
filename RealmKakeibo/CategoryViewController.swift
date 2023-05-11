//
//  CategoryViewController.swift
//  RealmKakeibo
//
//  Created by Haruto Hamano on 2023/05/11.
//

import UIKit
import RealmSwift

class CategoryViewController: UIViewController , UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet var tableView: UITableView!
    
    let realm = try! Realm()
    var categories: [Category] = []
    var selectedCategory: Category? = nil
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        categories = readCategories()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        categories = readCategories()
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell")!
        cell.textLabel?.text = categories[indexPath.row].title
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedCategory = categories[indexPath.row]
        self.performSegue(withIdentifier: "toItemView", sender: nil)
    }
    
    func readCategories() -> [Category]{
        return Array(realm.objects(Category.self))
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toItemView" {
            let itemViewContoroller = segue.destination as! ItemViewController
            itemViewContoroller.selectedCategory = self.selectedCategory!
        }
    }

}
