//
//  TutorialViewController.swift
//  LaunchPad
//
//  Created by Puja Maheshwari on 12/1/17.
//  Copyright © 2017 Puja Maheshwari. All rights reserved.
//

import UIKit

class TutorialViewController: ViewController {

    
    @IBOutlet weak var tutorialText: UILabel!
   // @IBOutlet weak var practiceButton: UIButton!
    
   
    @IBAction func practiceButton(_ sender: UIButton) {
        let randomNumber = arc4random_uniform(2)
        if(randomNumber == 0){
            self.performSegue(withIdentifier: "toPracticeOne", sender: self)
        }else{
            self.performSegue(withIdentifier: "toPracticeTwo", sender: self)
        }
    }
    
    @IBAction func skipButton(_ sender: UIButton) {
        let randomNumber = arc4random_uniform(2)
        if(randomNumber == 0){
            self.performSegue(withIdentifier: "toPracticeOne", sender: self)
        }else{
            self.performSegue(withIdentifier: "toPracticeTwo", sender: self)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
         tutorialText.text  = tutorials[myIndex]
         tutorialText.sizeToFit()
//        func practiceButton(){
//            let randomNumber = arc4random_uniform(1)
//            if(randomNumber == 0){
//                self.performSegue(withIdentifier: "toPracticeOne", sender: self)
//            }else{
//                self.performSegue(withIdentifier: "toPracticeTwo", sender: self)
//            }
//        }
        
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
