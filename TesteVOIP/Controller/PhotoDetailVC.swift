//
//  PhotoDetailVC.swift
//  TesteVOIP
//
//  Created by Rita de Cássia Vasconcelos do Nascimento on 09/01/20.
//  Copyright © 2020 Rita de Cássia Vasconcelos do Nascimento. All rights reserved.
//

import UIKit

class PhotoDetailVC: UIViewController {

    var imageView = UIImageView()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        imageView  = UIImageView(frame: CGRect(x: 0, y: 0, width: 200, height: 200));
    
        self.view.addSubview(imageView)
    }
    override func viewWillAppear(_ animated: Bool) {
        
    }

  

}
