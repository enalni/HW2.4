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
        
        user = User(login: "A", password: "E")
        login.delegate = self
        password.delegate = self
    }
    
    // Функция для вывода алертов
    private func openModal(txt: String) {
        let alert = UIAlertController(title: "", message: txt, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func actionForgotName() {
        openModal(txt: " Используйте - А ")
    }
    
    @IBAction func actionForgotPassword() {
        openModal(txt: " Используйте - Е ")
    }
    
    // проверка на правильность данных
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if login.text == "" {
            openModal(txt: "Введите логин")
            return
        }
        if password.text == "" {
            openModal(txt: "Введите пароль")
            return
        }
        if login.text != user?.login || password.text != user?.password {
            openModal(txt: "Неправильный логин / пароль")
            return
        }
    }
}
