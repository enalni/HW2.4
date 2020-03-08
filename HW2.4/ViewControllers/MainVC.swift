//
//  MainVC.swift
//  HW2.4
//
//  Created by Александр Николаевич on 08.03.2020.
//  Copyright © 2020 Alexander Nikolaevich. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    var user: User!
    
    @IBOutlet weak var welcome: UILabel!
    @IBOutlet weak var tapExit: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcome.text = "Welcome, \(user!.login)"
    }

}
