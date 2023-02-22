//
//  NavigateViewController.swift
//  TableViewApp
//
//  Created by Laurel Walker Davis on 2/21/23.
//

import UIKit

class NavigateViewController: UIViewController {

    @IBOutlet weak var cityLabel: UILabel!
    
    @IBOutlet weak var cityDescription: UILabel!
    
    var logic = CityLogic()
    var selection: CityState?
    var cityDescriptor: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cityLabel.text = selection?.city
        cityDescription.text = cityDescriptor
    }
    

}
