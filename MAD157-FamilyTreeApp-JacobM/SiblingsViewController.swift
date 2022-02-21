//
//  SiblingsViewController.swift
//  MAD157-FamilyTreeApp-JacobM
//
//  Created by student on 2/21/22.
//

import UIKit

class SiblingsViewController: UIViewController {
    
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
        // Do any additional setup after loading the view.
        
        let sister = familyMember(Name: "Gabrielle Miller", Relationship: "Sister")
        family.append(sister)
        
        let brother = familyMember(Name: "Nicholas Miller", Relationship: "Brother")
        family.append(brother)
        
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
