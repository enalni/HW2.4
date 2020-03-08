//
//  LoginVC.swift
//  HW2.4
//
//  Created by Александр Николаевич on 08.03.2020.
//  Copyright © 2020 Alexander Nikolaevich. All rights reserved.
//

import UIKit

class LoginVC: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var login: UITextField!
    @IBOutlet weak var password: UITextField!
    
    var user : User?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        user = User(login: "Alexander", password: "E")
        login.delegate = self
        password.delegate = self
    }
    
    // Функция для вывода алертов
    private func showAlert(txt: String) {
        let alert = UIAlertController(title: "", message: txt, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func actionForgotName() {
        showAlert(txt: " Используйте - Аlexander ")
    }
    
    @IBAction func actionForgotPassword() {
        showAlert(txt: " Используйте - Е ")
    }
    
    // проверка на правильность данных
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if login.text == "" {
            showAlert(txt: "Введите логин")
            return
        }
        if password.text == "" {
            showAlert(txt: "Введите пароль")
            return
        }
        if login.text != user?.login || password.text != user?.password {
            showAlert(txt: "Неправильный логин / пароль")
            return
        }
        
        let tab = segue.destination as! UITabBarController
        let vcWelcome = tab.viewControllers?.first as! MainVC
        vcWelcome.user = user
        
    }
    
    @IBAction func unwindSegue(segua: UIStoryboardSegue){}
    
}
