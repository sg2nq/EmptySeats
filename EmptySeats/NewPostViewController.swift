//
//  NewPostViewController.swift
//  EmptySeats
//
//  Created by Siddhant Goel on 3/2/19.
//  Copyright © 2019 Siddhant Goel. All rights reserved.
//

import UIKit
import iOSDropDown
import DatePicker
import Firebase

class NewPostViewController: UIViewController {

    @IBOutlet weak var fromDropDown: DropDown!
    @IBOutlet weak var RiderLabel: UILabel!
    @IBOutlet weak var toDropDown: DropDown!
    @IBOutlet weak var RiderDriverSwitch: UISwitch!
    
    var driver : Bool = false
    var destination :String = ""
    var fromOutput :String = ""
    let ref = Database.database().reference(withPath: "Rides")
    var day:Int?
    var month:Int?
    var start_time:String = ""
    var end_time:String = ""
    var price:String? = ""

    @IBOutlet weak var priceField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        fromDropDown.optionArray = ["SEAS", "A&S", "MCINTIRE", "BATTEN", "DARDEN", "CURRY", "NURSING", "UVA LAW"]
        fromDropDown.optionIds = [1,2,3,4,5,6,7,8]
        fromDropDown.didSelect{(selectedText , index ,id) in
            self.fromOutput = selectedText;
        }

        toDropDown.optionArray = ["SEAS", "A&S", "MCINTIRE", "BATTEN", "DARDEN", "CURRY", "NURSING", "UVA LAW"]
        toDropDown.optionIds = [1,2,3,4,5,6,7,8]
        toDropDown.didSelect{(selectedText , index ,id) in
            self.fromOutput = selectedText;
        }
        self.driver = RiderDriverSwitch.isOn
        
        // Do any additional setup after loading the view.
    }
    
//    @IBAction func numberSeatsPicker(_ sender: Any) {
//        
//    }
    @IBAction func pricePicker(_ sender: Any) {
        self.price = priceField.text
    }
    @IBAction func startTimePicker(_ sender: Any) {
//        self.start_time =
    }
    @IBAction func endTimePicker(_ sender: Any) {
//        self.start_time =
    }
    
    @IBAction func exitButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func datePickerButton(_ sender: Any) {
        
        let fd = DatePicker()
        
        // you can generate dates using this function
        // let date1 = FDHelper.shared.dateFrom(day: 18, month: 08, year: 1990)
        // let date2 = FDHelper.shared.dateFrom(day: 18, month: 08, year: 2020)
        
        // Yearless
        fd.setupYearless { (selected, month_selected, day_selected) in
            if selected, let day_selected = day_selected, let month_selected = month_selected {
                self.day = day_selected;
                self.month = month_selected;
                print("selected \(DatePickerHelper.shared.month(number: month_selected)) \(day_selected)")
                
            } else {
                print("Cancelled");
            }
        }
        
            
            
        fd.display(in: self)
    }
    //TODO:- Submit stuff to firebase and show "Done!"
    @IBAction func submitButton(_ sender: Any) {
        self.ref.child("ride_id").setValue(["From": self.fromOutput])
        self.ref.child("ride_id").setValue(["To": self.destination])
        self.ref.child("ride_id").setValue(["departure_month": self.month])
//        self.ref.child("Rides").setValue(["ride_id/departure_time": self.start_time])
//        self.ref.child("Rides").setValue(["ride_id/departure_time_end": self.end_time])
        self.ref.child("ride_id").setValue(["price": self.price])
        self.ref.child("ride_id").setValue(["driver": self.driver])


    }
    /*
    // MARK: - Navigation

     @IBAction func SubmitButton(_ sender: Any) {
     }
     // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
