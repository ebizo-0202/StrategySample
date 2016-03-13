//
//  ViewController.swift
//  StrategySample
//
//  Created by 市川夕貴 on 2016/02/26.
//  Copyright © 2016年 icchi-. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var text: String?
    
    @IBOutlet weak var englishButton: UIButton!
    @IBOutlet weak var russianButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        text = "こんにちは"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapEnglish(sender: AnyObject) {
        let concreatTranslator = EnglishTranslator()
        let englishTranslator = TranslatorContext(translator: concreatTranslator)
        
        guard let text = self.text else {
            return
        }
        englishTranslator.translate(text)
    }
    
    @IBAction func tapRussian(sender: AnyObject) {
        let concreatTranslator = RussianTranslator()
        let russianTranslator = TranslatorContext(translator: concreatTranslator)
        guard let text = self.text else {
            return
        }
        russianTranslator.translate(text)
    }

}

