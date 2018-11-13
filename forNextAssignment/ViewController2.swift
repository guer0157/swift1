//
//  ViewController2.swift
//  forNextAssignment
//
//  Created by Cesar Guerrero on 2018-11-08.
//  Copyright © 2018 guer0157.AlgonquinCollege. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    //create outlets for all items
    @IBOutlet weak var ChoiceC: UIBarButtonItem!
    @IBOutlet weak var ChoiceD: UIBarButtonItem!
    @IBOutlet weak var item2: UINavigationItem!
    @IBOutlet weak var PageText: UITextView!
    @IBOutlet weak var images: UIImageView!
    //add current page variable
var currentPage: Page?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    //create override function to be able to access the info passed in from the first
    //view
    override func viewWillAppear(_ animated: Bool) {
        //set the .text and .title values of the outlets with the data passed.
        self.item2.title="Page \(currentPage!.pageNumber!)"
        self.ChoiceC.title="Page \(currentPage!.pageChoiceA!.pageNumber!)"
        self.ChoiceD.title="Page \(currentPage!.pageChoiceB!.pageNumber!)"
        self.PageText.text=currentPage!.pageText
        self.images.image=currentPage!.image
    }
    //set the sender to buttonA and buttonB to distinguish the sender
    @IBAction func btnActionA(_ sender: Any) {
     performSegue(withIdentifier: "ViewController3", sender: "buttonA")
    }
    
    @IBAction func btnActionB(_ sender: Any) {
        performSegue(withIdentifier: "ViewController3", sender: "buttonB")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //set a variable to hold the next view controller
        let nextVc = segue.destination as! ViewController3
        
        ///create a conditional and to distinguis the sender and pass the proper data
        if sender as! String == "buttonA"{
            print(sender as! String)
            //pass data for pageChoiceA
            nextVc.currentPage=self.currentPage?.pageChoiceA
        }
        else if sender as! String == "buttonB"{
            print(sender as! String)
            //pass data for pageChoiceB
            nextVc.currentPage=self.currentPage?.pageChoiceB
        }
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
