//
//  ProfileViewCotrollerViewController.swift
//  TableViewChalenge04
//
//  Created by PEDRO HENRIQUE PEREIRA ELIAS DOS SANTOS on 30/11/17.
//  Copyright © 2017 PEDRO HENRIQUE PEREIRA ELIAS DOS SANTOS. All rights reserved.
//

import UIKit

class ProfileViewCotroller: UIViewController {

    
    @IBOutlet weak var contactImage: UIImageView!
    @IBOutlet weak var NameLabel2: UILabel!
    @IBOutlet weak var NameLabel: UILabel!
    
    
    var contact: Contact?
    
    override func viewWillAppear(_ animated: Bool) {
        contactImage.image = contact?.picture
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contactImage.image = contact?.picture
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
