//
//  AddNewUserViewController.swift
//  UsuarioCV
//
//  Created by Alexander Moreno Guillén on 8/12/19.
//  Copyright © 2019 Alexander Moreno Guillén. All rights reserved.
//

import UIKit
import RealmSwift

class AddNewUserViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var jobTextField: UITextField!
    @IBOutlet weak var cvTitleTextField: UITextField!
    @IBOutlet weak var cvDescriptionTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "donePressed" {
            if nameTextField.text != nil ||
                surnameTextField.text != nil ||
                ageTextField.text != nil ||
                idTextField.text != nil ||
                jobTextField.text != nil ||
                cvTitleTextField.text != nil ||
                cvDescriptionTextField.text != nil {
                let name = nameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
                let surname = surnameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
                let age = ageTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
                let job = jobTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
                let cvTitle = cvTitleTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
                let cvDescription = cvDescriptionTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
                let realm = try! Realm()
                
                try! realm.write {
                    let cv = Curriculum()
                    cv.title = cvTitle!
                    cv.cvDescription = cvDescription!
                    let users = realm.objects(User.self)
                    cv.id = UUID().uuidString
                    let user = User()
                    user.name = name!
                    user.surname = surname!
                    user.age = Int(age!)!
                    user.id = id!
                    user.job = job!
                    user.id = UUID().uuidString
                    realm.add(cv)
                    realm.add(user)
                }
            }
        }
    }
}
