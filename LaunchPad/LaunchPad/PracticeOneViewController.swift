//
//  PracticeOneViewController.swift
//  LaunchPad
//
//  Created by Puja Maheshwari on 12/3/17.
//  Copyright © 2017 Puja Maheshwari. All rights reserved.
//

import UIKit

class PracticeOneViewController: ViewController {

    var insertedElements = [String]()
    
//    @IBOutlet weak var homeButton: UIImageView!
    @IBOutlet weak var Question: UILabel!
//    @IBOutlet weak var AOne: UILabel!
//    @IBOutlet weak var ATwo: UILabel!
//    @IBOutlet weak var AThree: UILabel!
//    @IBOutlet weak var AFour: UILabel!
    
    @IBOutlet weak var AOne: UIButton!
    @IBOutlet weak var ATwo: UIButton!
    @IBOutlet weak var AThree: UIButton!
    @IBOutlet weak var AFour: UIButton!

    
    
    var groups = [[String]]()
    var groups1 = [String]()
//    var groups2 = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        homeButton.image = #imageLiteral(resourceName: "home1.png")
        let file = listContent[myIndex] + "Answers1"
//        AOne.isUserInteractionEnabled = true
//        var TapGesture = UITapGestureRecognizer(target: self, action: "LabelTapped")
//        self.AOne.addGestureRecognizer(TapGesture)
//        for(index,list) in listContent.enumerated(){
//            let str = list + "List"
//            listFileName.insert(str, at: index)
            //print(listFileName)
        //testButton.isHidden = true
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
//        let randomNumber = arc4random_uniform((UInt32(count-1)))
        var number: Int = Int(arc4random_uniform((UInt32(count-1))))
//        print(number)
        
//        print(groups[numb])
        insertedElements = groups[number]
        Question.text = insertedElements[0]
        AOne.setTitle("a. " + insertedElements[1], for: .normal)
        ATwo.setTitle("b. " + insertedElements[2], for: .normal)
        AThree.setTitle("c. " + insertedElements[3], for: .normal)
        AFour.setTitle("d. " + insertedElements[4], for: .normal)
//        AOne.text = "a. " + insertedElements[1]
//        ATwo.text = "b. " + insertedElements[2]
//        AThree.text = "c. " + insertedElements[3]
//        AFour.text = "d. " + insertedElements[4]
//        print(insertedElements)
        
    }
//    func LabelTapped(){
//        if()
//        print("Label tapped")
//        let alert = UIAlertController(title: "label", message: "label change", preferredStyle: .alert)
//        let okAction = UIAlertAction("Ok", UIAlertActionStyle.default,)
//    }
    
    @IBAction func AOneT(_ sender: Any) {
        let str = "a. " + insertedElements[5]
        if(AOne.titleLabel?.text == str){
//            AOne.backgroundColor = UIColor.green
            self.performSegue(withIdentifier: "otherPractice", sender: AnyObject.self)
        }else{
            AOne.backgroundColor = UIColor.red
        }
    }
    @IBAction func ATwo(_ sender: Any) {
        let str = "b. " + insertedElements[5]
        if(ATwo.titleLabel?.text == str){
//            ATwo.backgroundColor = UIColor.green
            self.performSegue(withIdentifier: "otherPractice", sender: AnyObject.self)
        }else{
            ATwo.backgroundColor = UIColor.red
        }
    }
    @IBAction func AThree(_ sender: Any) {
        let str = "c. " + insertedElements[5]
        if(AThree.titleLabel?.text == str){
//            AThree.backgroundColor = UIColor.green
            self.performSegue(withIdentifier: "otherPractice", sender: AnyObject.self)
        }else{
            AThree.backgroundColor = UIColor.red
        }
    }
    @IBAction func AFour(_ sender: Any) {
        let str = "d. " + insertedElements[5]
        if(AFour.titleLabel?.text == str){
//            AFour.backgroundColor = UIColor.green
            self.performSegue(withIdentifier: "otherPractice", sender: AnyObject.self)
        }else{
            AFour.backgroundColor = UIColor.red
//            viewDidLoad()
//            reloadInputViews()
//            AFour.backgroundColor = UIColor.white
        }
    }
    
    
    
        // Do any additional setup after loading the view.

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
