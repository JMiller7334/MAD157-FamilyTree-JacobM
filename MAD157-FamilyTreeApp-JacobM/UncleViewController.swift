//
//  UncleViewController.swift
//  MAD157-FamilyTreeApp-JacobM
//
//  Created by student on 2/21/22.
//

import UIKit

class UncleViewController: UIViewController {

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
        
        let aunt = familyMember(Name: "Patty Kruse", Relationship: "Aunt")
        family.append(aunt)
        
        let uncle = familyMember(Name: "Al Kruse", Relationship: "Uncle")
        family.append(uncle)
        
        let uncle1 = familyMember(Name: "Earl", Relationship: "Uncle")
        family.append(uncle1)
        
        
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
