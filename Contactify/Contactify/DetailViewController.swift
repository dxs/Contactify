//
//  DetailViewController.swift
//  Contactify
//
//  Created by Sven Borden on 13.08.18.
//  Copyright © 2018 ouay. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!


    func configureView() {
        // Update the user interface for the detail item.
        if let contact = contactItem {
            if let label = detailDescriptionLabel {
                label.text = contact.first_name
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var contactItem: Contact? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

