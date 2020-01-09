//
//  UIImageViewExt.swift
//  TesteVOIP
//
//  Created by Rita de Cássia Vasconcelos do Nascimento on 09/01/20.
//  Copyright © 2020 Rita de Cássia Vasconcelos do Nascimento. All rights reserved.
//

import Foundation
import UIKit
extension UIImageView {
    func load(url: URL, completion: @escaping ((_ errorMessage: String?) -> Void)) {
        DispatchQueue.global().async { //[weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self.image = image
                        completion(nil)
                    }
                }
            }
        }
    }
}
