//
//  ContactTableViewController.swift
//  TableViewChalenge04
//
//  Created by PEDRO HENRIQUE PEREIRA ELIAS DOS SANTOS on 30/11/17.
//  Copyright © 2017 PEDRO HENRIQUE PEREIRA ELIAS DOS SANTOS. All rights reserved.
//

import UIKit

class ContactTableViewController: UITableViewController {

    
    
        var contactList = [Contact]()
    
    var selectedContact: Contact? // this is the selected contact
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let contact1 = Contact()
        contact1.name = "2Pac"
        contact1.picture = UIImage(named: "2Pac")
        
        let contact2 = Contact()
        contact2.name = "Nick"
        contact2.picture = UIImage(named: "Nick")
        
        let contact3 = Contact()
        contact3.name = "Tony Stark"
        contact3.picture = UIImage(named: "Stark")

        
        self.contactList.append(contact1)
        self.contactList.append(contact2)
        self.contactList.append(contact3)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.contactList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath) as! TableViewCell

        // Configure the cell...
        let index = indexPath.row
        let contact = self.contactList[index]
        cell.contactName.text = contact.name
        cell.contactImage.image = contact.picture
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      self.selectedContact = self.contactList[indexPath.row]
        performSegue(withIdentifier: "presentContact", sender: self)
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

    
    // MARK: - Navigation

    //In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "presentContact"{
            
            let profileVC = segue.destination as! ProfileViewCotroller
         profileVC.contact = selectedContact
        }
    }
}


