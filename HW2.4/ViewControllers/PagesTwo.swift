//
//  PagesTwo.swift
//  HW2.4
//
//  Created by Александр Николаевич on 08.03.2020.
//  Copyright © 2020 Alexander Nikolaevich. All rights reserved.
//

import UIKit

class PagesTwo: UIViewController {
    
    @IBOutlet weak var about: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        about.text = """
Apple — американская корпорация, производитель персональных и планшетных
компьютеров, аудиоплееров, телефонов, программного обеспечения. Один из пионеров
в области персональных компьютеров и современных многозадачных операционных
систем с графическим интерфейсом. Штаб-квартира — в Купертино, штат Калифорния.
Благодаря инновационным технологиям и эстетичному дизайну, корпорация Apple
создала в индустрии потребительской электроники уникальную репутацию, сравнимую
с культом. Является первой американской компанией, чья капитализация превысила
1,044 трлн долларов США. Это произошло во время торгов акциями компании
10 сентября 2018 года.В тот же день компания стала самой дорогой публичной
компанией за всю историю, превысив капитализацию предыдущего рекордсмена —
компании PetroChina (1,005 трлн долларов в ноябре 2007 года).
В 2018 году заняла третье место в списке 500 лучших работодателей мира
по мнению журнала Forbes
"""
    }
    
}

