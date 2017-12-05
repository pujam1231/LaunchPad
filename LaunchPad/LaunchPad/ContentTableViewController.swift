//
//  ContentTableViewController.swift
//  LaunchPad
//
//  Created by Puja Maheshwari on 11/16/17.
//  Copyright © 2017 Puja Maheshwari. All rights reserved.
//

import UIKit

var listContent = ["Printing","Variables", "Arrays","Strings"]
var listFileName:Array = [String] ()
var tutorials: Array = [String] ()
var myIndex = 0

class ContentTableViewController: UITableViewController{
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Pick a topic!"
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = UIColor(red:0.25, green:0.87, blue:0.92, alpha:1.0)
//        for i in 0..<list.count{
//            listFileName[i] = list[i].text+"List"
//        }
        
        for(index,list) in listContent.enumerated(){
            let str = list + "List"
            listFileName.insert(str, at: index)
            //print(listFileName)
            if let path = Bundle.main.path(forResource: listFileName[index], ofType: "txt") {
                do {
                    let data = try String(contentsOfFile: path, encoding: .utf8)
                    let myStrings = data.components(separatedBy: .newlines)
                    let text = myStrings.joined(separator: " ")
                    //print(text)
                    tutorials.append(text)
                    //print(tutorials)
                } catch {
                    print(error)
                }
            }
        }
    
       
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
         return listContent.count;
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = listContent[indexPath.row]
        cell.textLabel?.font = UIFont(name: (cell.textLabel?.font.fontName)!, size: 20)
        //cell.backgroundColor = UIColor(displayP3Red: 0xFF, green: 0xFF, blue: 0xFF, alpha: 1)
        cell.backgroundColor = UIColor(red:0.25, green:0.87, blue:0.92, alpha:1.0)
        
        return (cell)
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "toTutorial", sender: self)
    }
}
