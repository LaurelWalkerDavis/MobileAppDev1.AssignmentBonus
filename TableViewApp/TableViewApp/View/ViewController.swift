//
//  ViewController.swift
//  TableViewApp
//
//  Created by Laurel Walker Davis on 2/21/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
        
    var logic = CityLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return logic.cities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = logic.cities[indexPath.row].city
        content.secondaryText = logic.cities[indexPath.row].state
        cell.contentConfiguration = content
        return cell
    }
        
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        logic.setCity(_city: logic.cities[indexPath.row])
        logic.setDescription(_city: logic.selectedCity!)
        self.performSegue(withIdentifier: "toCityView", sender: self)
    }
    
    
    
    // MARK: - Navigation
    
    //In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCityView" {
            let cityNavigation = segue.destination as! NavigateViewController
            cityNavigation.selection = logic.getCity()
            cityNavigation.cityDescriptor = logic.getDescription()
        }
    }
}


