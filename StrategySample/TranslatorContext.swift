//
//  TranslatorStrategy.swift
//  StrategySample
//
//  Created by 市川夕貴 on 2016/02/28.
//  Copyright © 2016年 icchi-. All rights reserved.
//

import Foundation

class TranslatorContext{
    
    var translator: Translator?
    
    init(translator: Translator) {
        self.translator = translator
    }
    
    func translate(text: String) -> String{
        guard let translator = self.translator else {
            return "error"
        }
        return translator.translate(text)
    }
}