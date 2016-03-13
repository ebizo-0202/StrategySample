//
//  EnglishTranslator.swift
//  StrategySample
//
//  Created by 市川夕貴 on 2016/02/26.
//  Copyright © 2016年 icchi-. All rights reserved.
//

import Foundation

class EnglishTranslator: Translator{
    func translate(text: String) -> String {
        print("\(text)を英語に翻訳します")
        return text
    }
}