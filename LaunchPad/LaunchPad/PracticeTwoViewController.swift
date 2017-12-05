//
//  PracticeTwoViewController.swift
//  LaunchPad
//
//  Created by Puja Maheshwari on 12/3/17.
//  Copyright © 2017 Puja Maheshwari. All rights reserved.
//

import UIKit

class PracticeTwoViewController: ViewController {
    var insertedElements = [String]()

//    @IBOutlet weak var homeButton: UIImageView!
    @IBOutlet weak var questionView: UILabel!
      @IBOutlet weak var userInput: UITextField!
    
//    if(userInput.text == insertedElements[1]){
    @IBAction func submitButton(_ sender: Any) {
        if(userInput.text != insertedElements[1]){
            userInput.text = ""
        }
        if(userInput.text == insertedElements[1]){
            self.performSegue(withIdentifier: "otherPractice", sender: AnyObject.self)
        }
    }
    
    var groups = [[String]]()
    var groups1 = [String]()
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
//        homeButton.image = #imageLiteral(resourceName: "home1.png")
        
        let file = listContent[myIndex] + "Answers2"
        
        //        for(index,list) in listContent.enumerated(){
        //            let str = list + "List"
        //            listFileName.insert(str, at: index)
        //print(listFileName)
        if let path = Bundle.main.path(forResource: file, ofType: "txt") {
            do {
                let data = try String(contentsOfFile: path, encoding: .utf8)
                let line = data.components(separatedBy: .newlines)
                for(row,str) in line.enumerated(){
                    var groups2 = [String]()
                    let myStrings = line[row].components(separatedBy: "\",\"")
                    for (col,str) in myStrings.enumerated(){
                        groups2.append(myStrings[col])
                    }
                    groups1 = groups2
                    groups.append(groups1)
                }
            } catch {
                print(error)
            }
        }
        //        print(groups.count)
        let count = groups.count
        print(count)
        //        let randomNumber = arc4random_uniform((UInt32(count-1)))
        var number: Int = Int(arc4random_uniform((UInt32(count-1))))
        //        print(number)
        //        print(groups[numb])
        insertedElements = groups[number]
        questionView.text = insertedElements[0]
        
        // Do any additional setup after loading the view.
        
    }

   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
