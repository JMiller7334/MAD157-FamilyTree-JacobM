//
//  InfoViewController.swift
//  MAD157-FamilyTreeApp-JacobM
//
//  Created by student on 2/20/22.
//

import UIKit

class InfoViewController: UIViewController {
    @IBOutlet var labelEntries: [UILabel]!
    
    var family:[familyMember] = []
    class familyMember{
        var name: String
        var relationship: String
        
        init(Name:String, Relationship:String){
            self.name = Name
            self.relationship = Relationship
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let father = familyMember(Name: "AJ Miller", Relationship: "Father")
        family.append(father)
        
        let mother = familyMember(Name: "Sandra Miller", Relationship: "Mother")
        family.append(mother)
        
        print(family)
        
        var loop = 0
        labelEntries.forEach{(entry) in //get each element in the collection outlet
            print("run\(loop)")
            if loop < family.count {
                entry.text = ("\(family[loop].name) | \(family[loop].relationship)")
                loop = loop + 1
            } else{
                entry.text = ""
            }
            
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
