//
//  DetailViewController.swift
//  Contactify
//
//  Created by Sven Borden on 13.08.18.
//  Copyright © 2018 ouay. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var companyLabel: UILabel!
    
    var contact: Contact? {
        didSet {
            refreshUI()
        }
    }
    
    func refreshUI() {
        loadViewIfNeeded()
        firstNameLabel.text = contact?.first_name
        lastNameLabel.text = contact?.last_name
        positionLabel.text = contact?.position
        companyLabel.text = contact?.company
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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

extension DetailViewController: ContactSelectionDelegate {
    func contactSelected(_ newContact: Contact) {
        contact = newContact
    }
}
