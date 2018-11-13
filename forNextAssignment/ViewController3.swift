//
//  ViewController3.swift
//  forNextAssignment
//
//  Created by Cesar Guerrero on 2018-11-08.
//  Copyright © 2018 guer0157.AlgonquinCollege. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {
    //create outlets for all items
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var item3: UINavigationItem!
    @IBOutlet weak var pageText: UITextView!
    @IBOutlet weak var page: UIBarButtonItem!
    var currentPage: Page?
    override func viewDidLoad() {
        super.viewDidLoad()
        //set the page title
        self.page.title="Restart"
    }
//    user the viewWillAppear function to pass the data from view 2
    override func viewWillAppear(_ animated: Bool) {
        //set all the values for the outlets with the data passed in from the second view
        self.item3.title="Page \(currentPage!.pageNumber!)"
        self.pageText.text=currentPage!.pageText
        self.img.image=currentPage!.image
    }
    //user viewWillAppear function to undo all the clicks and go back to the first view
    @IBAction func RestartButton(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
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
