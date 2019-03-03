//
//  NewPostViewController.swift
//  EmptySeats
//
//  Created by Siddhant Goel on 3/2/19.
//  Copyright © 2019 Siddhant Goel. All rights reserved.
//

import UIKit
import iOSDropDown

class NewPostViewController: UIViewController {

    @IBOutlet weak var fromDropDown: DropDown!
    @IBOutlet weak var RiderLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        fromDropDown.optionArray = ["SEAS", "A&S", "MCINTIRE", "BATTEN", "DARDEN", "CURRY", "NURSING", "UVA LAW"]
        fromDropDown.optionIds = [1,2,3,4,5,6,7,8]
        fromDropDown.didSelect{(selectedText , index ,id) in
            self.RiderLabel.text = "\(selectedText)"
        }


        // Do any additional setup after loading the view.
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
