//
//  ContraintsExt.swift
//  TesteVOIP
//
//  Created by Rita de Cássia Vasconcelos do Nascimento on 08/01/20.
//  Copyright © 2020 Rita de Cássia Vasconcelos do Nascimento. All rights reserved.
//

import UIKit

extension UIView{
    
    func pin(to superview: UIView){
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: superview.topAnchor).isActive = true
        leadingAnchor.constraint(equalTo: superview.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: superview.trailingAnchor).isActive = true
        
        bottomAnchor.constraint(equalTo: superview.bottomAnchor).isActive = true
        
    }
}
