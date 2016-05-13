//
//  EntryViewController.swift
//  Notes
//
//  Created by Tyler on 5/13/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class EntryViewController: UIViewController {

    
    // MARK - Outlets
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var entryTextView: UITextView!
    
    var entry: Entry?
    
    // MARK - VC LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Action Buttons
    @IBAction func saveButtonTapped(sender: AnyObject) {
        let entry = Entry(title: titleTextField.text ?? "", bodyText: entryTextView.text)
        EntryController.sharedController.addEntry(entry)
        self.navigationController?.popToRootViewControllerAnimated(true)
        
    }
    @IBAction func deleteButtonTapped(sender: AnyObject) {
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
