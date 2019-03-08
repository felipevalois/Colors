//
//  ColorsViewController.swift
//  Colors
//
//  Created by Felipe Costa on 3/7/19.
//  Copyright © 2019 Felipe Costa. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var colorsTableView: UITableView!
    
    var colors = ["red", "orange", "yellow", "green", "blue", "purple", "brown"]
    
    var UIcolors = [UIColor.red, UIColor.orange, UIColor.yellow, UIColor.gray, UIColor.blue, UIColor.purple, UIColor.brown]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //alternative to manually setting through the storyboard below
        //colorsTableView.dataSource = self
        //colorsTableView.delegate = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        
        // question mark required because textLabel is an optional
        // unwrap only happens if textLabel != nil
        cell.textLabel?.text = colors[indexPath.row]
        cell.backgroundColor = UIcolors[indexPath.row]
        
        return cell
    }
    
    

}
