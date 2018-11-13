//
//  ViewController.swift
//  forNextAssignment
//
//  Created by Cesar Guerrero on 2018-11-01.
//  Copyright © 2018 guer0157.AlgonquinCollege. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//Set outlets for all items to use later
    @IBOutlet weak var Navitem: UINavigationItem!
    @IBOutlet weak var btnB: UIBarButtonItem!
    @IBOutlet weak var BtnA: UIBarButtonItem!
    @IBOutlet weak var pagetext: UITextView!
    @IBOutlet weak var StoryTitle: UILabel!
    @IBOutlet weak var images: UIImageView!
    //create 7 intances of the page class and one more for the current page
    var page1: Page?=Page()
    var page2: Page?=Page()
    var page3: Page?=Page()
    var page4: Page?=Page()
    var page5: Page?=Page()
    var page6: Page?=Page()
    var page7: Page?=Page()
    
    var currentPage: Page?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //set te values for each page, pageNumber, pageChoicea, pageChoiceB, image,pageText
        page1?.pageNumber=1
        //Add page Text
        page1?.pageText="The religion you practice is a highly due to circumstance. Depending on where you where born, your parents background and the time you were born all play an important, although not definite, factor in determining the religion you practice.\nChoose one of the options to learn more about which factors could change the religion you practice."
        page1?.image=UIImage(named: "religions")
        
        page1?.pageChoiceA=page2
        page1?.pageChoiceB=page3
        page2?.pageNumber=2
        //Add page Text
        page2?.pageText = "The year is 2000 B.C and you're born to a family living within the rule of king Hammurabi in Babylon, Mesopotamia. The people of Babylon at this time are knows as Sumerians and are a highly advanced civilization, they've started to explore sailing and are building ships that take them across the persian golf. You as a Sumerian would worship earth and the stars, your religion would be polytheistic, but your main God would be Marduk"
        page2?.image=UIImage(named: "marduk")
        
        page2?.pageChoiceA=page4
        page2?.pageChoiceB=page5
        page3?.pageNumber=3
        //Add page Text
        page3?.pageText = "It is the middle of 19th century the industrial revolution is still present and Charles Darwin has just published the origin of the species. Christianity is the main religion, but it takes a huge blow due to a new theory being developed. You are now a confused Christian with lot of questions for God. Where are the dinosaurs?"
        page3?.image=UIImage(named: "charles-darwin3")
        page3?.pageChoiceA=page6
        page3?.pageChoiceB=page7
        page4?.pageNumber=4
        //Add page Text follows page 2
        page4?.pageText = "The year is now 900 A.D your family had remained for generations in Mesopotamia and you're the great-great-geat-great-great grandson of a Sumerian. Babylon is now called Al Jami'ayn and it is part of the Abbasid caliphate under the rule of caliph Abul `Abbas al-Saffah. The poeple of Jami'ayn have switched to a monotheistic religion and the caliph is the successor of Prophet Mohammed the last Islamic profet. You are now a Muslim and your God is Allah."
        page4?.image=UIImage(named: "islam")
        page5?.pageNumber=5
        //Add page Text follows page 2
        page5?.pageText = "The year is now 200 B.C you are born to a Roman couple during the great expansion of the Roman empire, they decided to settle in the city of Assyria which the roman empire had previously taken possesion of. The Romans worship the planets and wind, and fire. Your God is Jupiter."
        page5?.image=UIImage(named: "jupiter")
        page6?.pageNumber=6
        //Add page Text follows page 3
        page6?.pageText = "The year is 2018, there have been amazing advancements in science. We gain new insight about the cosmos and our past evey week. There is huge diversity of religions with the 3 most important ones being Christianity, Judism and Islam. You're now an Atheist."
        page6?.image=UIImage(named: "atheist")
        page7?.pageNumber=7
        //Add page Text follows page 3
        page7?.pageText = "The year is 1950 you are part of a tribe in the South Pacific Island of Vanuatu. It has been a harsh summer and it is hard to hunt, but lately the whole tribe has been noticing weird things in the sky, majestic shapes that fly by every so often. One day something decends from the sky from one of those things. It's food and other supplies, all of this is unknown to the whole tribe and everyone tributes it to magic. You now worship airplanes"
        page7?.image=UIImage(named: "airplanes")
        
        currentPage=page1
        
        
        
        //the text and title values for the outlets
        self.Navitem.title="Page \(currentPage!.pageNumber!)"
        self.BtnA.title="Page \(currentPage!.pageChoiceA!.pageNumber!)"
        self.btnB.title="Page \(currentPage!.pageChoiceB!.pageNumber!)"
        self.StoryTitle.text="The coincidence of religion"
        self.pagetext.text = currentPage!.pageText
        self.images.image=currentPage!.image
    }
//set the send for the segue to buttonA and buttonB to distinguish when performing segue
    @IBAction func btnActionA(_ sender: Any) {
        performSegue(withIdentifier: "ShowSecondPage", sender: "buttonA")
    }
    
    @IBAction func btnActionB(_ sender: Any) {
        
        performSegue(withIdentifier: "ShowSecondPage", sender: "buttonB")
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //set a variable to hold the next view controller
        let nextVc = segue.destination as! ViewController2
        //create a conditional statement to distinguish sender
        if sender as! String == "buttonA"{
            print(sender as! String)
            //send the proper pageChoice info
            nextVc.currentPage=self.currentPage?.pageChoiceA
        }
        else if sender as! String == "buttonB"{
            print(sender as! String)
 
            nextVc.currentPage=self.currentPage?.pageChoiceB
        }
        
    }
}

