//
//  ViewController.swift
//  calendar
//
//  Created by Борух Соколов on 25.03.2023.
//

import UIKit

class ViewController:
    UIViewController {
    
    //полусили результаты которрые ввели
    @IBOutlet weak var dateTextFiled: UITextField!
    @IBOutlet weak var mountTextField: UITextField!
    @IBOutlet weak var yearTextFiled: UITextField!
    
    @IBOutlet weak var resultText: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    //нажатие на кнопку
    @IBAction func findeDay(_ sender: UIButton) {
        
        let calendar=Calendar.current //получили текуший календарь
        
        var dateComponent=DateComponents()   //вставляем наши компонеты
        dateComponent.day=Int(dateTextFiled.text!) //! так как ?(необ)
        dateComponent.month=Int(mountTextField.text!)
        dateComponent.year=Int(yearTextFiled.text!)
        
        let dateFormat=DateFormatter() //в каком формате хотим (докум)
        dateFormat.dateFormat="EEEE"
        
        let date=calendar.date(from: dateComponent)//делвем дату от всего
        let weaklday=dateFormat.string(from: date!)//
        
        resultText.text=weaklday
        
    }
    
    //если наатия на экран вернулись то убираеи клаву
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    

}

