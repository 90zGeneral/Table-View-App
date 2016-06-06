//
//  ViewController.swift
//  Table Views
//
//  Created by Roydon Jeffrey on 6/6/16.
//  Copyright © 2016 Italyte. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
//UITableViewDelegate allows the UIViewController to be responsible for the table view that was added to it in Main.storyboard
    
    
    var cellContent = ["Mommy", "Kemi", "Dingo", "Avo"]
    
    //this returns an integer that represents the number of rows in the section of the table
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return cellContent.count
        
    }
    
    //this will define the content of each individual cell by running this function based on the amount of values within the cellContent array
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //set the identifier exactly the same as in the prototype cell on Main.storyboard. Each cell will look identical to each other
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        
        cell.textLabel?.text = cellContent[indexPath.row]    //each cell will vary based on each index value of the cellContent Array
        
        return cell
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

