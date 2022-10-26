//
//  String+Extension.swift
//  Flora_Fauna
//
//  Created by Timia Raines on 10/26/22.
//

import Foundation

extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
