//
//  DetailViewController.swift
//  UsuarioCV
//
//  Created by Alexander Moreno Guillén on 8/12/19.
//  Copyright © 2019 Alexander Moreno Guillén. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var user: User?
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var cvTitleLabel: UILabel!
    @IBOutlet weak var cvDescriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        fillView()
    }
    
    func fillView() {
        nameLabel.text = "Name: " + user!.name
        surnameLabel.text = "Surname: " + user!.surname
        ageLabel.text = "Age: \(user!.age)"
        jobLabel.text = "Job: " + user!.job
        idLabel.text = "ID: " + user!.id
        cvTitleLabel.text = user?.cv?.title
        cvDescriptionLabel.text = user?.cv?.cvDescription
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
