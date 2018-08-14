//
//  MasterTableViewController.swift
//  Contactify
//
//  Created by Sven Borden on 13.08.18.
//  Copyright © 2018 ouay. All rights reserved.
//

import UIKit

class MasterTableViewController: UITableViewController {

    let contacts = [
        Contact(first_name: "Jerome", last_name: "Crochat", category: "Data Insight", company: "Jumpshot", position: "Director of Product Management", work_phone: "+1(415)992-2054", mobile_phone: "", email: "jerome.crochat@jumpshot.com", where_we_met: "Swissnex EPFL Alumni", what_provide: "", country: "USA", city: "San Francisco"),
        Contact(first_name: "Jhansi", last_name: "Reddy", category: "Health", company: "Maya Clinicals", position: "CEO", work_phone: "+1(650)943-2477", mobile_phone: "+1(408)781-6175", email: "jhansi@mayaclinicals.com", where_we_met: "HealthCare mixer event", what_provide: "Already went to Switzerland, knows people in the USA for HealthCare", country: "USA", city: "San Francisco")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

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

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let contact = contacts[indexPath.row]
        cell.textLabel?.text = contact.first_name
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
